Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9A76D83E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 18:40:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9D0E83EA3E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 16:40:38 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.101])
	by lists.linaro.org (Postfix) with ESMTP id 2A67B3EA3E
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 16:40:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.101 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.43:49358.1442670072
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id ACFAB100212;
	Thu,  6 Apr 2023 00:40:17 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-7b48884fd-tj646 with ESMTP id df0d463a81a442a0b10347c0bc8a8624 for emil.l.velikov@gmail.com;
	Thu, 06 Apr 2023 00:40:20 CST
X-Transaction-ID: df0d463a81a442a0b10347c0bc8a8624
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <ad715c40-70de-0fa8-37e9-2d80ee0ebe36@189.cn>
Date: Thu, 6 Apr 2023 00:40:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Emil Velikov <emil.l.velikov@gmail.com>
References: <20230403171304.2157326-1-suijingfeng@loongson.cn>
 <20230403171304.2157326-3-suijingfeng@loongson.cn>
 <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2A67B3EA3E
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[183.61.185.101:from,114.242.206.180:received];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	TAGGED_RCPT(0.00)[];
	DMARC_NA(0.00)[189.cn];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[loongson.cn:email,189.cn:helo];
	NEURAL_HAM(-0.00)[-0.989];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org,loongson.cn,vger.kernel.org,lists.freedesktop.org];
	URIBL_BLOCKED(0.00)[ptr.189.cn:rdns,189.cn:helo];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[189.cn];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: RMZMEQQANOAO6BZOCO2OOZNVWLJZEHWE
X-Message-ID-Hash: RMZMEQQANOAO6BZOCO2OOZNVWLJZEHWE
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RMZMEQQANOAO6BZOCO2OOZNVWLJZEHWE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

On 2023/4/4 22:10, Emil Velikov wrote:
> Greetings Sui Jingfeng,
>
> I haven't been around drm-land for a while and this is the first
> driver I skim through in a few years. So take the following
> suggestions with a healthy pinch of salt.
>
> Hope that helps o/
Emil, we love your reviews,
> On Mon, 3 Apr 2023 at 18:13, Sui Jingfeng <suijingfeng@loongson.cn> wrote:
>
>>    v7 -> v8:
>>     1) Zero a compile warnnings on 32-bit platform, compile with W=1
>>     2) Revise lsdc_bo_gpu_offset() and minor cleanup
>>     3) Pageflip tested on the virtual terminal with following commands
>>
>>        modetest -M loongson -s 32:1920x1080 -v
>>        modetest -M loongson -s 34:1920x1080 -v -F tiles
>>
> I could be wrong, but my understanding is that new drivers should be
> capable of running under Xorg and/or Wayland compositor. There is also
> the IGT test suite, which can help verify and validate the driver's
> behaviour:
>
> https://www.kernel.org/doc/html/latest/gpu/drm-uapi.html
>
Yet it may take more time to give full answer for all of your concerns.

Currently, drm/loongson driver do works under Xorg(X server),

link[1] is a short video which can prove that the driver actually works 
very well.

Note that it use the generic modesetting driver on userspace.

We could provide more videos if necessary.


We are carry on the IGT test suite, we feedback the test result once it 
finished on our platform.

I'm not familiar with it before, previously we only focus on the basic 
unit tests came with libdrm.


I will answer rest questions in a latter time, please wait a moment.

>
>> +static void lsdc_crtc_reset(struct drm_crtc *crtc)
>> +{
>> +       struct lsdc_display_pipe *dispipe = crtc_to_display_pipe(crtc);
>> +       struct drm_device *ddev = crtc->dev;
>> +       struct lsdc_device *ldev = to_lsdc(ddev);
>> +       struct lsdc_crtc_state *priv_crtc_state;
>> +       unsigned int index = dispipe->index;
>> +       u32 val;
>> +
>> +       val = LSDC_PF_XRGB8888 | CFG_RESET_N;
>> +       if (ldev->descp->chip == CHIP_LS7A2000)
>> +               val |= LSDC_DMA_STEP_64_BYTES;
>> +
>> +       lsdc_crtc_wreg32(ldev, LSDC_CRTC0_CFG_REG, index, val);
>> +
>> +       if (ldev->descp->chip == CHIP_LS7A2000) {
>> +               val = PHY_CLOCK_EN | PHY_DATA_EN;
>> +               lsdc_crtc_wreg32(ldev, LSDC_CRTC0_PANEL_CONF_REG, index, val);
>> +       }
>> +
> AFAICT no other driver touches the HW in their reset callback. Should
> the above be moved to another callback?
>
>
>
>> +static void lsdc_crtc_atomic_enable(struct drm_crtc *crtc,
>> +                                   struct drm_atomic_state *state)
>> +{
>> +       val = lsdc_crtc_rreg32(ldev, LSDC_CRTC0_CFG_REG, index);
>> +       /* clear old dma step settings */
>> +       val &= ~CFG_DMA_STEP_MASK;
>> +
>> +       if (descp->chip == CHIP_LS7A2000) {
>> +               /*
>> +                * Using large dma step as much as possible,
>> +                * for improve hardware DMA efficiency.
>> +                */
>> +               if (width_in_bytes % 256 == 0)
>> +                       val |= LSDC_DMA_STEP_256_BYTES;
>> +               else if (width_in_bytes % 128 == 0)
>> +                       val |= LSDC_DMA_STEP_128_BYTES;
>> +               else if (width_in_bytes % 64 == 0)
>> +                       val |= LSDC_DMA_STEP_64_BYTES;
>> +               else  /* width_in_bytes % 32 == 0 */
>> +                       val |= LSDC_DMA_STEP_32_BYTES;
>> +       }
>> +
>> +       clk_func->update(pixpll, &priv_state->pparms);
>> +
> Without knowing the hardware, the clk_func abstraction seems quite
> arbitrary and unnecessary. It should be introduced when there is a
> use-case for it.
>
>
>> +       lsdc_crtc_wreg32(ldev, LSDC_CRTC0_CFG_REG, index, val | CFG_OUTPUT_EN);
>> +
>> +       drm_crtc_vblank_on(crtc);
>> +}
>> +
>
>> --- /dev/null
>> +++ b/drivers/gpu/drm/loongson/lsdc_debugfs.c
>> +void lsdc_debugfs_init(struct drm_minor *minor)
>> +{
>> +#ifdef CONFIG_DEBUG_FS
>> +       drm_debugfs_create_files(lsdc_debugfs_list,
>> +                                ARRAY_SIZE(lsdc_debugfs_list),
>> +                                minor->debugfs_root,
>> +                                minor);
>> +#endif
>> +}
> Should probably build the file when debugfs is enabled and provide
> no-op stub in the header. See nouveau for an example.
>
>
>> --- /dev/null
>> +++ b/drivers/gpu/drm/loongson/lsdc_drv.c
>> +static const struct lsdc_desc dc_in_ls7a1000 = {
>> +       .chip = CHIP_LS7A1000,
>> +       .num_of_crtc = LSDC_NUM_CRTC,
>> +       .max_pixel_clk = 200000,
>> +       .max_width = 2048,
>> +       .max_height = 2048,
>> +       .num_of_hw_cursor = 1,
>> +       .hw_cursor_w = 32,
>> +       .hw_cursor_h = 32,
>> +       .pitch_align = 256,
>> +       .mc_bits = 40,
>> +       .has_vblank_counter = false,
>> +       .has_scan_pos = true,
>> +       .has_builtin_i2c = true,
>> +       .has_vram = true,
>> +       .has_hpd_reg = false,
>> +       .is_soc = false,
>> +};
>> +
>> +static const struct lsdc_desc dc_in_ls7a2000 = {
>> +       .chip = CHIP_LS7A2000,
>> +       .num_of_crtc = LSDC_NUM_CRTC,
>> +       .max_pixel_clk = 350000,
>> +       .max_width = 4096,
>> +       .max_height = 4096,
>> +       .num_of_hw_cursor = 2,
>> +       .hw_cursor_w = 64,
>> +       .hw_cursor_h = 64,
>> +       .pitch_align = 64,
>> +       .mc_bits = 40, /* support 48, but use 40 for backward compatibility */
>> +       .has_vblank_counter = true,
>> +       .has_scan_pos = true,
>> +       .has_builtin_i2c = true,
>> +       .has_vram = true,
>> +       .has_hpd_reg = true,
>> +       .is_soc = false,
>> +};
>> +
> Roughly a quarter of the above are identical. It might be better to
> drop them for now and re-introduce as needed with future code.
>
>> +const char *chip_to_str(enum loongson_chip_family chip)
>> +{
>> +       if (chip == CHIP_LS7A2000)
>> +               return "LS7A2000";
>> +
>> +       if (chip == CHIP_LS7A1000)
>> +               return "LS7A1000";
>> +
> If it were me, I would add the name into the lsdc_desc.
>
>
>> +static enum drm_mode_status
>> +lsdc_mode_config_mode_valid(struct drm_device *ddev,
>> +                           const struct drm_display_mode *mode)
>> +{
>> +       struct lsdc_device *ldev = to_lsdc(ddev);
>> +       const struct drm_format_info *info = drm_format_info(DRM_FORMAT_XRGB8888);
> Short-term hard coding a format is fine, but there should be a comment
> describing why.
>
>> +       u64 min_pitch = drm_format_info_min_pitch(info, 0, mode->hdisplay);
>> +       u64 fb_size = min_pitch * mode->vdisplay;
>> +
>> +       if (fb_size * 3 > ldev->vram_size) {
> Why are we using 3 here? Please add an inline comment.
>
>
>> +static const struct dev_pm_ops lsdc_pm_ops = {
>> +       .suspend = lsdc_pm_suspend,
>> +       .resume = lsdc_pm_resume,
>> +       .freeze = lsdc_pm_freeze,
>> +       .thaw = lsdc_pm_thaw,
>> +       .poweroff = lsdc_pm_freeze,
>> +       .restore = lsdc_pm_resume,
>> +};
>> +
> The above section (and functions) should probably be wrapped in a
> CONFIG_PM_SLEEP block.
>
>
>
>> +static const struct pci_device_id lsdc_pciid_list[] = {
>> +       {PCI_VENDOR_ID_LOONGSON, 0x7a06, PCI_ANY_ID, PCI_ANY_ID, 0, 0, CHIP_LS7A1000},
>> +       {PCI_VENDOR_ID_LOONGSON, 0x7a36, PCI_ANY_ID, PCI_ANY_ID, 0, 0, CHIP_LS7A2000},
>> +       {0, 0, 0, 0, 0, 0, 0}
>> +};
>> +
>> +static int __init loongson_module_init(void)
>> +{
>> +       while ((pdev = pci_get_class(PCI_CLASS_DISPLAY_VGA << 8, pdev))) {
>> +               if (pdev->vendor != PCI_VENDOR_ID_LOONGSON) {
>> +                       pr_info("Discrete graphic card detected, abort\n");
>> +                       return 0;
>> +               }
>> +       }
> You can set the class/class_mask in the lsdc_pciid_list and drop this
> loop. The vendor is already listed above and checked by core.
>
>
>
>> +++ b/drivers/gpu/drm/loongson/lsdc_drv.h
>> @@ -0,0 +1,324 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (C) 2022 Loongson Corporation
>> + *
> We're in 2023, update the year across the files?
>
>
>
>> +struct lsdc_gem {
>> +       /* @mutex: protect objects list */
>> +       struct mutex mutex;
>> +       struct list_head objects;
>> +};
>> +
>> +struct lsdc_device {
>> +       struct drm_device base;
>> +       struct ttm_device bdev;
>> +
>> +       /* @descp: features description of the DC variant */
>> +       const struct lsdc_desc *descp;
>> +
>> +       struct pci_dev *gpu;
>> +
>> +       /* @reglock: protects concurrent access */
>> +       spinlock_t reglock;
>> +       void __iomem *reg_base;
>> +       resource_size_t vram_base;
>> +       resource_size_t vram_size;
>> +
>> +       resource_size_t gtt_size;
>> +
>> +       struct lsdc_display_pipe dispipe[LSDC_NUM_CRTC];
>> +
>> +       struct lsdc_gem gem;
>> +
> Last time I looked there was no other driver with a list of gem
> objects (and a mutex) in its device struct. Are you sure we need this?
>
> Very few drivers use TTM directly and I think you want to use
> drm_gem_vram_helper or drm_gem_ttm_helper instead.
>
>
>
>> +static int ls7a1000_pixpll_param_update(struct lsdc_pll * const this,
>> +                                       struct lsdc_pll_parms const *pin)
>> +{
>> +       void __iomem *reg = this->mmio;
>> +       unsigned int counter = 0;
>> +       bool locked;
>> +       u32 val;
>> +
>> +       /* Bypass the software configured PLL, using refclk directly */
>> +       val = readl(reg + 0x4);
>> +       val &= ~(1 << 8);
>> +       writel(val, reg + 0x4);
>> +
> There are a lot of magic numbers in this function. Let's define them
> properly in the header.
>
>
>
>> +/* Helpers for chip detection */
>> +bool lsdc_is_ls2k2000(void);
>> +bool lsdc_is_ls2k1000(void);
>> +unsigned int loongson_cpu_get_prid(u8 *impl, u8 *rev);
>
> Since this revision does pci_devices only, we don't need this detection right?
>
>
> Hope that helps,
> Emil
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
