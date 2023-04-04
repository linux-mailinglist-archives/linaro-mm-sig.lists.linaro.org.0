Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 429086DD57C
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 10:30:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 426163EBCB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 08:30:15 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by lists.linaro.org (Postfix) with ESMTPS id 051AB3E948
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Apr 2023 14:10:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=oHHi+3kZ;
	spf=pass (lists.linaro.org: domain of emil.l.velikov@gmail.com designates 209.85.219.178 as permitted sender) smtp.mailfrom=emil.l.velikov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yb1-f178.google.com with SMTP id d3so10927980ybu.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Apr 2023 07:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680617418;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xfNepDO449qHca2IOuAdPFcI03PtkddPBl6DsmE6NTM=;
        b=oHHi+3kZjDIQmt6EFjcXYh7We97dm4mzgDuIBXtuip0K3/ACKW/QirMrZbH8TPPnr1
         ceV1sDMXNq7lNxBOo4nKzITBKKMjx23XuI2RTi3qOdDtb6s4v5HVaxw7fNv7zPlWDMdq
         WP1FgxWjiA49aVlzDsPgdAFJiKjF8rXsYeSxZ4O3W4FLSZME3yJGN8sMHPRbQ7lCuMT+
         4663I8iUGgv1sWiOVMVJH4v6AE4Hb/LpMXOS56gmwbLGusk46lx1a2hlr/fgdT9ofEbr
         0bzBAgLSn4St4IL7tYqXSi14w2qBB9UmBLR1kzbfwT06Jp/p/hTuA2uP4+iyNzn8eUej
         rJhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680617418;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xfNepDO449qHca2IOuAdPFcI03PtkddPBl6DsmE6NTM=;
        b=P0DAb8T7MmKWbP04am5+Tkj3lU4bq6+nJMda/e0TjpKwA7s2VriLbQQAfwsOrcJvc1
         JSUz32Nu8BTofNTqnojyEVIS23qcBohl3WpBAevti8OA30xLyUUqOM44XIaA7su4nLFN
         PYUfeaNmNpmOXydb1eFlIm+DpSshpXskqxM9LfXG9cqhvaQSQrlNNE99mC1ZLgt4jB6s
         tPizhnmZ5SI1W71ogfJQTvgpoVUNLrbDqAtuBksWwy1vfAfYNzxZibTIqQowtixHZOUx
         OlVwJ0eGJ1aBlVmbbnEX0AwC//jvbsgyujOrS6cDPfyCqimLIW8R8/1ww6c4hviKvngb
         hmiw==
X-Gm-Message-State: AAQBX9c3+4wxqXiqIHj6dSoHsmr2Ss0WRa2DUgvXsZB3WeGDfKdxevjo
	smxx9iVqWz5TKtgP+usdFVjbjhDHvV3FY5/Sk/M=
X-Google-Smtp-Source: AKy350bgFiOexYEMz+8rw2O0xaAQ6UqWi8T6Ns7FMqGx8h2OCn8ovV0529X8E1qd4vcSYQMGB4A5OnPH3huWfGBx1YI=
X-Received: by 2002:a25:cb83:0:b0:b6a:5594:5936 with SMTP id
 b125-20020a25cb83000000b00b6a55945936mr1901850ybg.5.1680617418410; Tue, 04
 Apr 2023 07:10:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230403171304.2157326-1-suijingfeng@loongson.cn> <20230403171304.2157326-3-suijingfeng@loongson.cn>
In-Reply-To: <20230403171304.2157326-3-suijingfeng@loongson.cn>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Tue, 4 Apr 2023 15:10:06 +0100
Message-ID: <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
To: Sui Jingfeng <suijingfeng@loongson.cn>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 051AB3E948
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.219.178:from];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.178:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org,loongson.cn,vger.kernel.org,lists.freedesktop.org]
X-MailFrom: emil.l.velikov@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: V4W4US5XT6WMQRHTHB7QBZWWJC52CGV2
X-Message-ID-Hash: V4W4US5XT6WMQRHTHB7QBZWWJC52CGV2
X-Mailman-Approved-At: Tue, 11 Apr 2023 08:30:04 +0000
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V4W4US5XT6WMQRHTHB7QBZWWJC52CGV2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Greetings Sui Jingfeng,

I haven't been around drm-land for a while and this is the first
driver I skim through in a few years. So take the following
suggestions with a healthy pinch of salt.

Hope that helps o/

On Mon, 3 Apr 2023 at 18:13, Sui Jingfeng <suijingfeng@loongson.cn> wrote:

>   v7 -> v8:
>    1) Zero a compile warnnings on 32-bit platform, compile with W=1
>    2) Revise lsdc_bo_gpu_offset() and minor cleanup
>    3) Pageflip tested on the virtual terminal with following commands
>
>       modetest -M loongson -s 32:1920x1080 -v
>       modetest -M loongson -s 34:1920x1080 -v -F tiles
>

I could be wrong, but my understanding is that new drivers should be
capable of running under Xorg and/or Wayland compositor. There is also
the IGT test suite, which can help verify and validate the driver's
behaviour:

https://www.kernel.org/doc/html/latest/gpu/drm-uapi.html



> +static void lsdc_crtc_reset(struct drm_crtc *crtc)
> +{
> +       struct lsdc_display_pipe *dispipe = crtc_to_display_pipe(crtc);
> +       struct drm_device *ddev = crtc->dev;
> +       struct lsdc_device *ldev = to_lsdc(ddev);
> +       struct lsdc_crtc_state *priv_crtc_state;
> +       unsigned int index = dispipe->index;
> +       u32 val;
> +
> +       val = LSDC_PF_XRGB8888 | CFG_RESET_N;
> +       if (ldev->descp->chip == CHIP_LS7A2000)
> +               val |= LSDC_DMA_STEP_64_BYTES;
> +
> +       lsdc_crtc_wreg32(ldev, LSDC_CRTC0_CFG_REG, index, val);
> +
> +       if (ldev->descp->chip == CHIP_LS7A2000) {
> +               val = PHY_CLOCK_EN | PHY_DATA_EN;
> +               lsdc_crtc_wreg32(ldev, LSDC_CRTC0_PANEL_CONF_REG, index, val);
> +       }
> +

AFAICT no other driver touches the HW in their reset callback. Should
the above be moved to another callback?



> +static void lsdc_crtc_atomic_enable(struct drm_crtc *crtc,
> +                                   struct drm_atomic_state *state)
> +{

> +       val = lsdc_crtc_rreg32(ldev, LSDC_CRTC0_CFG_REG, index);
> +       /* clear old dma step settings */
> +       val &= ~CFG_DMA_STEP_MASK;
> +
> +       if (descp->chip == CHIP_LS7A2000) {
> +               /*
> +                * Using large dma step as much as possible,
> +                * for improve hardware DMA efficiency.
> +                */
> +               if (width_in_bytes % 256 == 0)
> +                       val |= LSDC_DMA_STEP_256_BYTES;
> +               else if (width_in_bytes % 128 == 0)
> +                       val |= LSDC_DMA_STEP_128_BYTES;
> +               else if (width_in_bytes % 64 == 0)
> +                       val |= LSDC_DMA_STEP_64_BYTES;
> +               else  /* width_in_bytes % 32 == 0 */
> +                       val |= LSDC_DMA_STEP_32_BYTES;
> +       }
> +
> +       clk_func->update(pixpll, &priv_state->pparms);
> +

Without knowing the hardware, the clk_func abstraction seems quite
arbitrary and unnecessary. It should be introduced when there is a
use-case for it.


> +       lsdc_crtc_wreg32(ldev, LSDC_CRTC0_CFG_REG, index, val | CFG_OUTPUT_EN);
> +
> +       drm_crtc_vblank_on(crtc);
> +}
> +


> --- /dev/null
> +++ b/drivers/gpu/drm/loongson/lsdc_debugfs.c

> +void lsdc_debugfs_init(struct drm_minor *minor)
> +{
> +#ifdef CONFIG_DEBUG_FS
> +       drm_debugfs_create_files(lsdc_debugfs_list,
> +                                ARRAY_SIZE(lsdc_debugfs_list),
> +                                minor->debugfs_root,
> +                                minor);
> +#endif
> +}

Should probably build the file when debugfs is enabled and provide
no-op stub in the header. See nouveau for an example.


> --- /dev/null
> +++ b/drivers/gpu/drm/loongson/lsdc_drv.c

> +static const struct lsdc_desc dc_in_ls7a1000 = {
> +       .chip = CHIP_LS7A1000,
> +       .num_of_crtc = LSDC_NUM_CRTC,
> +       .max_pixel_clk = 200000,
> +       .max_width = 2048,
> +       .max_height = 2048,
> +       .num_of_hw_cursor = 1,
> +       .hw_cursor_w = 32,
> +       .hw_cursor_h = 32,
> +       .pitch_align = 256,
> +       .mc_bits = 40,
> +       .has_vblank_counter = false,
> +       .has_scan_pos = true,
> +       .has_builtin_i2c = true,
> +       .has_vram = true,
> +       .has_hpd_reg = false,
> +       .is_soc = false,
> +};
> +
> +static const struct lsdc_desc dc_in_ls7a2000 = {
> +       .chip = CHIP_LS7A2000,
> +       .num_of_crtc = LSDC_NUM_CRTC,
> +       .max_pixel_clk = 350000,
> +       .max_width = 4096,
> +       .max_height = 4096,
> +       .num_of_hw_cursor = 2,
> +       .hw_cursor_w = 64,
> +       .hw_cursor_h = 64,
> +       .pitch_align = 64,
> +       .mc_bits = 40, /* support 48, but use 40 for backward compatibility */
> +       .has_vblank_counter = true,
> +       .has_scan_pos = true,
> +       .has_builtin_i2c = true,
> +       .has_vram = true,
> +       .has_hpd_reg = true,
> +       .is_soc = false,
> +};
> +

Roughly a quarter of the above are identical. It might be better to
drop them for now and re-introduce as needed with future code.

> +const char *chip_to_str(enum loongson_chip_family chip)
> +{
> +       if (chip == CHIP_LS7A2000)
> +               return "LS7A2000";
> +
> +       if (chip == CHIP_LS7A1000)
> +               return "LS7A1000";
> +

If it were me, I would add the name into the lsdc_desc.


> +static enum drm_mode_status
> +lsdc_mode_config_mode_valid(struct drm_device *ddev,
> +                           const struct drm_display_mode *mode)
> +{
> +       struct lsdc_device *ldev = to_lsdc(ddev);
> +       const struct drm_format_info *info = drm_format_info(DRM_FORMAT_XRGB8888);

Short-term hard coding a format is fine, but there should be a comment
describing why.

> +       u64 min_pitch = drm_format_info_min_pitch(info, 0, mode->hdisplay);
> +       u64 fb_size = min_pitch * mode->vdisplay;
> +
> +       if (fb_size * 3 > ldev->vram_size) {

Why are we using 3 here? Please add an inline comment.


> +static const struct dev_pm_ops lsdc_pm_ops = {
> +       .suspend = lsdc_pm_suspend,
> +       .resume = lsdc_pm_resume,
> +       .freeze = lsdc_pm_freeze,
> +       .thaw = lsdc_pm_thaw,
> +       .poweroff = lsdc_pm_freeze,
> +       .restore = lsdc_pm_resume,
> +};
> +

The above section (and functions) should probably be wrapped in a
CONFIG_PM_SLEEP block.



> +static const struct pci_device_id lsdc_pciid_list[] = {
> +       {PCI_VENDOR_ID_LOONGSON, 0x7a06, PCI_ANY_ID, PCI_ANY_ID, 0, 0, CHIP_LS7A1000},
> +       {PCI_VENDOR_ID_LOONGSON, 0x7a36, PCI_ANY_ID, PCI_ANY_ID, 0, 0, CHIP_LS7A2000},
> +       {0, 0, 0, 0, 0, 0, 0}
> +};
> +

> +static int __init loongson_module_init(void)
> +{

> +       while ((pdev = pci_get_class(PCI_CLASS_DISPLAY_VGA << 8, pdev))) {
> +               if (pdev->vendor != PCI_VENDOR_ID_LOONGSON) {
> +                       pr_info("Discrete graphic card detected, abort\n");
> +                       return 0;
> +               }
> +       }

You can set the class/class_mask in the lsdc_pciid_list and drop this
loop. The vendor is already listed above and checked by core.



> +++ b/drivers/gpu/drm/loongson/lsdc_drv.h
> @@ -0,0 +1,324 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2022 Loongson Corporation
> + *

We're in 2023, update the year across the files?



> +struct lsdc_gem {
> +       /* @mutex: protect objects list */
> +       struct mutex mutex;
> +       struct list_head objects;
> +};
> +

> +struct lsdc_device {
> +       struct drm_device base;
> +       struct ttm_device bdev;
> +
> +       /* @descp: features description of the DC variant */
> +       const struct lsdc_desc *descp;
> +
> +       struct pci_dev *gpu;
> +
> +       /* @reglock: protects concurrent access */
> +       spinlock_t reglock;
> +       void __iomem *reg_base;
> +       resource_size_t vram_base;
> +       resource_size_t vram_size;
> +
> +       resource_size_t gtt_size;
> +
> +       struct lsdc_display_pipe dispipe[LSDC_NUM_CRTC];
> +
> +       struct lsdc_gem gem;
> +

Last time I looked there was no other driver with a list of gem
objects (and a mutex) in its device struct. Are you sure we need this?

Very few drivers use TTM directly and I think you want to use
drm_gem_vram_helper or drm_gem_ttm_helper instead.



> +static int ls7a1000_pixpll_param_update(struct lsdc_pll * const this,
> +                                       struct lsdc_pll_parms const *pin)
> +{
> +       void __iomem *reg = this->mmio;
> +       unsigned int counter = 0;
> +       bool locked;
> +       u32 val;
> +
> +       /* Bypass the software configured PLL, using refclk directly */
> +       val = readl(reg + 0x4);
> +       val &= ~(1 << 8);
> +       writel(val, reg + 0x4);
> +

There are a lot of magic numbers in this function. Let's define them
properly in the header.



> +/* Helpers for chip detection */
> +bool lsdc_is_ls2k2000(void);
> +bool lsdc_is_ls2k1000(void);
> +unsigned int loongson_cpu_get_prid(u8 *impl, u8 *rev);


Since this revision does pci_devices only, we don't need this detection right?


Hope that helps,
Emil
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
