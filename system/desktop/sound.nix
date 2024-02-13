{config, pkgs, ...}:
{
    sound.enable = true;

    security.rtkit.enable = true;

    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        jack.enable = true;
    };
    # Pulseaudio should be disabled by default, but it seems to be enabled somewhere.
    # This conflicts with pipewire.
    hardware.pulseaudio.enable = false;

    environment.systemPackages = with pkgs; [
        pipewire
    ];
}

