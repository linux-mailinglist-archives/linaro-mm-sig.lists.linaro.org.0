Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ExvDaUB4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F2590410F21
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:35:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F70B40A99
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:35:00 +0000 (UTC)
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	by lists.linaro.org (Postfix) with ESMTPS id 25D5C3F80B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 14:27:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=VWeWGmEY;
	spf=pass (lists.linaro.org: domain of boris.brezillon@collabora.com designates 148.251.105.195 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1764340038;
	bh=MCNZ7/JOKVOKMS2Ye0Z5CGLQlCRGTTYsDLTxzMvltaE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=VWeWGmEYeGIgOvnLOSv8vEZiGfLixdNRBrF3Bgr0AQUVMMk6cw7rC3fmfJScOHhk0
	 dq3yDCG0wySHJ0aZbKRoxq0re1kYfYMGz3whg8KFAuKb5XNE9DLT5nB71E51SK/Cf2
	 nU88JdaCMFOf/JFtsbIkvVK/L4VXruBPjCG4JH+y31ngZIHhAqW8x/WXC5RaGIiwIz
	 ys2oaPzY/4viwi7a5+jNUkoheY6zfcvJSf+O49BorhP0pEa/0c+Mp/VcXdioCRFuRR
	 zAelT7RVIaYa9P/7f4yeLE3FDFRXQD8ExFh2rZc7tqfsDgRgBQiJBEP2wg5bE0Nm1G
	 S3cnWYoaDhB2g==
Received: from fedora (unknown [IPv6:2a01:e0a:2c:6930:d919:a6e:5ea1:8a9f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A7BC717E0EDB;
	Fri, 28 Nov 2025 15:27:16 +0100 (CET)
Date: Fri, 28 Nov 2025 15:27:13 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Alice Ryhl <aliceryhl@google.com>
Message-ID: <20251128152713.15bf1c37@fedora>
In-Reply-To: <20251128-gpuvm-rust-v1-3-ebf66bf234e0@google.com>
References: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
	<20251128-gpuvm-rust-v1-3-ebf66bf234e0@google.com>
Organization: Collabora
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: boris.brezillon@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MVLULDBY5OZ6472JOQRZHB3FFHXF2WF7
X-Message-ID-Hash: MVLULDBY5OZ6472JOQRZHB3FFHXF2WF7
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:07:25 +0000
CC: Danilo Krummrich <dakr@kernel.org>, Daniel Almeida <daniel.almeida@collabora.com>, Matthew Brost <matthew.brost@intel.com>, Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?UTF-8?B?QmrDtnJu?= Roy Baron <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@p
 oorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Lyude Paul <lyude@redhat.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] drm/gpuvm: use const for drm_gpuva_op_* ptrs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MVLULDBY5OZ6472JOQRZHB3FFHXF2WF7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3337];
	R_DKIM_REJECT(1.00)[collabora.com:s=mail];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[collabora.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.604];
	FROM_NEQ_ENVFROM(0.00)[boris.brezillon@collabora.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,collabora.com,intel.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,arm.com,garyguo.net,protonmail.com,umich.edu,imgtec.com,oss.qualcomm.com,linux.dev,p oorly.run,somainline.org,redhat.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,collabora.com:email]
X-Rspamd-Queue-Id: F2590410F21
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 28 Nov 2025 14:14:17 +0000
Alice Ryhl <aliceryhl@google.com> wrote:

> These methods just read the values stored in the op pointers without
> modifying them, so it is appropriate to use const ptrs here.
> 
> This allows us to avoid const -> mut pointer casts in Rust.
> 
> Signed-off-by: Alice Ryhl <aliceryhl@google.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  drivers/gpu/drm/drm_gpuvm.c | 6 +++---
>  include/drm/drm_gpuvm.h     | 8 ++++----
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_gpuvm.c b/drivers/gpu/drm/drm_gpuvm.c
> index 9cd06c7600dc32ceee0f0beb5e3daf31698a66b3..e06b58aabb8ea6ebd92c625583ae2852c9d2caf1 100644
> --- a/drivers/gpu/drm/drm_gpuvm.c
> +++ b/drivers/gpu/drm/drm_gpuvm.c
> @@ -2283,7 +2283,7 @@ EXPORT_SYMBOL_GPL(drm_gpuvm_interval_empty);
>  void
>  drm_gpuva_map(struct drm_gpuvm *gpuvm,
>  	      struct drm_gpuva *va,
> -	      struct drm_gpuva_op_map *op)
> +	      const struct drm_gpuva_op_map *op)
>  {
>  	drm_gpuva_init_from_op(va, op);
>  	drm_gpuva_insert(gpuvm, va);
> @@ -2303,7 +2303,7 @@ EXPORT_SYMBOL_GPL(drm_gpuva_map);
>  void
>  drm_gpuva_remap(struct drm_gpuva *prev,
>  		struct drm_gpuva *next,
> -		struct drm_gpuva_op_remap *op)
> +		const struct drm_gpuva_op_remap *op)
>  {
>  	struct drm_gpuva *va = op->unmap->va;
>  	struct drm_gpuvm *gpuvm = va->vm;
> @@ -2330,7 +2330,7 @@ EXPORT_SYMBOL_GPL(drm_gpuva_remap);
>   * Removes the &drm_gpuva associated with the &drm_gpuva_op_unmap.
>   */
>  void
> -drm_gpuva_unmap(struct drm_gpuva_op_unmap *op)
> +drm_gpuva_unmap(const struct drm_gpuva_op_unmap *op)
>  {
>  	drm_gpuva_remove(op->va);
>  }
> diff --git a/include/drm/drm_gpuvm.h b/include/drm/drm_gpuvm.h
> index 0d3fc1f6cac9966a42f3bc82b0b491bfefaf5b96..655bd9104ffb24170fca14dfa034ee79f5400930 100644
> --- a/include/drm/drm_gpuvm.h
> +++ b/include/drm/drm_gpuvm.h
> @@ -1121,7 +1121,7 @@ void drm_gpuva_ops_free(struct drm_gpuvm *gpuvm,
>  			struct drm_gpuva_ops *ops);
>  
>  static inline void drm_gpuva_init_from_op(struct drm_gpuva *va,
> -					  struct drm_gpuva_op_map *op)
> +					  const struct drm_gpuva_op_map *op)
>  {
>  	va->va.addr = op->va.addr;
>  	va->va.range = op->va.range;
> @@ -1265,13 +1265,13 @@ int drm_gpuvm_sm_unmap_exec_lock(struct drm_gpuvm *gpuvm, struct drm_exec *exec,
>  
>  void drm_gpuva_map(struct drm_gpuvm *gpuvm,
>  		   struct drm_gpuva *va,
> -		   struct drm_gpuva_op_map *op);
> +		   const struct drm_gpuva_op_map *op);
>  
>  void drm_gpuva_remap(struct drm_gpuva *prev,
>  		     struct drm_gpuva *next,
> -		     struct drm_gpuva_op_remap *op);
> +		     const struct drm_gpuva_op_remap *op);
>  
> -void drm_gpuva_unmap(struct drm_gpuva_op_unmap *op);
> +void drm_gpuva_unmap(const struct drm_gpuva_op_unmap *op);
>  
>  /**
>   * drm_gpuva_op_remap_to_unmap_range() - Helper to get the start and range of
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
