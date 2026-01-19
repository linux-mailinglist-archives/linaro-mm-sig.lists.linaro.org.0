Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D753D3A923
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 13:39:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B99E3F7FD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 12:39:27 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 731F23F6FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 12:39:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=L9YcDKgs;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DA9D560155;
	Mon, 19 Jan 2026 12:39:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92B42C116C6;
	Mon, 19 Jan 2026 12:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768826360;
	bh=Xp09gWC1E9OCNc+qqpGNdGNtAiJK448gBZX2ws7J5IM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L9YcDKgs50KwJZGaXvzaVA0Yp3w/krSD3QMG7JsW5vxsmyEn0KUELJ1jYPQAp5Z/v
	 VBkiVWlhhvj3yrBeFE7OhgwN3fQgMqwg2qM1wvugj+u7yU3hEHleIqcitM0AbAt5Hg
	 cHFkr3rvhS1/zB8uke+f/4cSX2lIRpkTECfd3aI1gUWCCq4znqSoT/Z5/etfG8ugEc
	 FVa+8T0LNTI/SUEp9uIilTCH56WTr/putQpQsFiaX2+G2yEq70O9WPgkiEiVHDqLl2
	 7VKdZRo2xsyc43V7hwP2oLaeEnGeODjuXz4lvCbwuLkEsglYtbUJGLHhwIzvy1iXhw
	 jKmui593JczFg==
Date: Mon, 19 Jan 2026 14:39:15 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20260119123915.GM13201@unreal>
References: <20260118-dmabuf-revoke-v2-0-a03bb27c0875@nvidia.com>
 <20260118-dmabuf-revoke-v2-1-a03bb27c0875@nvidia.com>
 <345b8dcb-5015-4801-b263-0dca4d1b3fca@amd.com>
 <20260119113809.GK13201@unreal>
 <871628d8-14b6-4d38-b05e-a33822f8d71b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871628d8-14b6-4d38-b05e-a33822f8d71b@amd.com>
X-Rspamd-Queue-Id: 731F23F6FF
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.4.254];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	ASN(0.00)[asn:63949, ipnet:172.105.0.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: K2IH47NTEMNCK6MVDW7NLEGXGAANNAEH
X-Message-ID-Hash: K2IH47NTEMNCK6MVDW7NLEGXGAANNAEH
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rd
 ma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/4] dma-buf: Rename .move_notify() callback to a clearer identifier
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K2IH47NTEMNCK6MVDW7NLEGXGAANNAEH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 01:00:18PM +0100, Christian K=F6nig wrote:
> On 1/19/26 12:38, Leon Romanovsky wrote:
> > On Mon, Jan 19, 2026 at 11:22:27AM +0100, Christian K=F6nig wrote:
> >> On 1/18/26 13:08, Leon Romanovsky wrote:
> >>> From: Leon Romanovsky <leonro@nvidia.com>
> >>>
> >>> Rename the .move_notify() callback to .invalidate_mappings() to make =
its
> >>> purpose explicit and highlight that it is responsible for invalidating
> >>> existing mappings.
> >>>
> >>> Suggested-by: Christian K=F6nig <christian.koenig@amd.com>
> >>> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> >>
> >> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
> >=20
> > Thanks,
> >=20
> > BTW, I didn't update the various xxx_move_notify() functions to use
> > xxx_invalidate_mappings() names. Should those be converted as well?
>=20
> No, those importer specific functions can keep their name.
>=20
> More important is the config option. Haven't thought about that one.
>=20
> Probably best if we either rename or completely remove that one, it was t=
o keep the MOVE_NOTIFY functionality separate for initial testing but we ha=
ve clearly supassed this long time ago.

I removed it and will send in v3.

commit 05ad416fc0b8c9b07714f9b23dbb038c991b819d
Author: Leon Romanovsky <leonro@nvidia.com>
Date:   Mon Jan 19 07:24:26 2026 -0500

    dma-buf: Always build with DMABUF_MOVE_NOTIFY
   =20
    DMABUF_MOVE_NOTIFY was introduced in 2018 and has been marked as
    experimental and disabled by default ever since. Six years later,
    all new importers implement this callback.
   =20
    It is therefore reasonable to drop CONFIG_DMABUF_MOVE_NOTIFY and
    always build DMABUF with support for it enabled.

    Suggested-by: Christian K=F6nig <christian.koenig@amd.com>
    Signed-off-by: Leon Romanovsky <leonro@nvidia.com>

diff --git a/drivers/dma-buf/Kconfig b/drivers/dma-buf/Kconfig
index b46eb8a552d7..84d5e9b24e20 100644
--- a/drivers/dma-buf/Kconfig
+++ b/drivers/dma-buf/Kconfig
@@ -40,18 +40,6 @@ config UDMABUF
          A driver to let userspace turn memfd regions into dma-bufs.
          Qemu can use this to create host dmabufs for guest framebuffers.
=20
-config DMABUF_MOVE_NOTIFY
-       bool "Move notify between drivers (EXPERIMENTAL)"
-       default n
-       depends on DMA_SHARED_BUFFER
-       help
-         Don't pin buffers if the dynamic DMA-buf interface is available on
-         both the exporter as well as the importer. This fixes a security
-         problem where userspace is able to pin unrestricted amounts of me=
mory
-         through DMA-buf.
-         This is marked experimental because we don't yet have a consistent
-         execution context and memory management between drivers.
-
 config DMABUF_DEBUG
        bool "DMA-BUF debug checks"
        depends on DMA_SHARED_BUFFER
diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
index 59cc647bf40e..cd3b60ce4863 100644
--- a/drivers/dma-buf/dma-buf.c
+++ b/drivers/dma-buf/dma-buf.c
@@ -837,18 +837,10 @@ static void mangle_sg_table(struct sg_table *sg_table)
=20
 }
=20
-static inline bool
-dma_buf_attachment_is_dynamic(struct dma_buf_attachment *attach)
-{
-       return !!attach->importer_ops;
-}
-
 static bool
 dma_buf_pin_on_map(struct dma_buf_attachment *attach)
 {
-       return attach->dmabuf->ops->pin &&
-               (!dma_buf_attachment_is_dynamic(attach) ||
-                !IS_ENABLED(CONFIG_DMABUF_MOVE_NOTIFY));
+       return attach->dmabuf->ops->pin && !attach->importer_ops;
 }
=20
 /**
@@ -1124,7 +1116,7 @@ struct sg_table *dma_buf_map_attachment(struct dma_bu=
f_attachment *attach,
        /*
         * Importers with static attachments don't wait for fences.
         */
-       if (!dma_buf_attachment_is_dynamic(attach)) {
+       if (!attach->importer_ops) {
                ret =3D dma_resv_wait_timeout(attach->dmabuf->resv,
                                            DMA_RESV_USAGE_KERNEL, true,
                                            MAX_SCHEDULE_TIMEOUT);
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c b/drivers/gpu/drm/=
amd/amdgpu/amdgpu_dma_buf.c
index 863454148b28..349215549e8f 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c
@@ -145,13 +145,9 @@ static int amdgpu_dma_buf_pin(struct dma_buf_attachmen=
t *attach)
         * notifiers are disabled, only allow pinning in VRAM when move
         * notiers are enabled.
         */
-       if (!IS_ENABLED(CONFIG_DMABUF_MOVE_NOTIFY)) {
-               domains &=3D ~AMDGPU_GEM_DOMAIN_VRAM;
-       } else {
-               list_for_each_entry(attach, &dmabuf->attachments, node)
-                       if (!attach->peer2peer)
-                               domains &=3D ~AMDGPU_GEM_DOMAIN_VRAM;
-       }
+       list_for_each_entry(attach, &dmabuf->attachments, node)
+               if (!attach->peer2peer)
+                       domains &=3D ~AMDGPU_GEM_DOMAIN_VRAM;
=20
        if (domains & AMDGPU_GEM_DOMAIN_VRAM)
                bo->flags |=3D AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED;
diff --git a/drivers/gpu/drm/amd/amdkfd/Kconfig b/drivers/gpu/drm/amd/amdkf=
d/Kconfig
index 16e12c9913f9..a5d7467c2f34 100644
--- a/drivers/gpu/drm/amd/amdkfd/Kconfig
+++ b/drivers/gpu/drm/amd/amdkfd/Kconfig
@@ -27,7 +27,7 @@ config HSA_AMD_SVM
=20
 config HSA_AMD_P2P
        bool "HSA kernel driver support for peer-to-peer for AMD GPU device=
s"
-       depends on HSA_AMD && PCI_P2PDMA && DMABUF_MOVE_NOTIFY
+       depends on HSA_AMD && PCI_P2PDMA
        help
          Enable peer-to-peer (P2P) communication between AMD GPUs over
          the PCIe bus. This can improve performance of multi-GPU compute
diff --git a/drivers/gpu/drm/xe/tests/xe_dma_buf.c b/drivers/gpu/drm/xe/tes=
ts/xe_dma_buf.c
index 1f2cca5c2f81..c107687ef3c0 100644
--- a/drivers/gpu/drm/xe/tests/xe_dma_buf.c
+++ b/drivers/gpu/drm/xe/tests/xe_dma_buf.c
@@ -22,8 +22,7 @@ static bool p2p_enabled(struct dma_buf_test_params *param=
s)
=20
 static bool is_dynamic(struct dma_buf_test_params *params)
 {
-       return IS_ENABLED(CONFIG_DMABUF_MOVE_NOTIFY) && params->attach_ops =
&&
-               params->attach_ops->invalidate_mappings;
+       return params->attach_ops && params->attach_ops->invalidate_mapping=
s;
 }
=20
 static void check_residency(struct kunit *test, struct xe_bo *exported,
diff --git a/drivers/gpu/drm/xe/xe_dma_buf.c b/drivers/gpu/drm/xe/xe_dma_bu=
f.c
index 1b9cd043e517..ea370cd373e9 100644
--- a/drivers/gpu/drm/xe/xe_dma_buf.c
+++ b/drivers/gpu/drm/xe/xe_dma_buf.c
@@ -56,14 +56,10 @@ static int xe_dma_buf_pin(struct dma_buf_attachment *at=
tach)
        bool allow_vram =3D true;
        int ret;
=20
-       if (!IS_ENABLED(CONFIG_DMABUF_MOVE_NOTIFY)) {
-               allow_vram =3D false;
-       } else {
-               list_for_each_entry(attach, &dmabuf->attachments, node) {
-                       if (!attach->peer2peer) {
-                               allow_vram =3D false;
-                               break;
-                       }
+       list_for_each_entry(attach, &dmabuf->attachments, node) {
+               if (!attach->peer2peer) {
+                       allow_vram =3D false;
+                       break;
                }
        }
=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
