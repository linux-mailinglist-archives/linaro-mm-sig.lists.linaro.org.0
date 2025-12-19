Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DxiBHIK4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:12:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0AF4116EB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:12:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E99AF43F22
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:12:32 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 023573F99F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 19 Dec 2025 12:15:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GZI+KIIM;
	spf=pass (lists.linaro.org: domain of dakr@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=dakr@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 53C5940651;
	Fri, 19 Dec 2025 12:15:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A36E2C4CEF1;
	Fri, 19 Dec 2025 12:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766146514;
	bh=zr3MOIdRIiLo5rQVA/Ls8ftqQmh9k+HKygN/fGUhHUM=;
	h=Date:Subject:Cc:To:From:References:In-Reply-To:From;
	b=GZI+KIIMKdrldmwo7anW9rvr4aLsQBZAC9pHRgRsTbVfoUDi8BU6ovBSAJYDNojJh
	 4AYAUZonScKOOogC43EkXDdgB04ocA8/I5WdYaWRnXC8I6s6hlfcjVZrZOmk0glcjQ
	 iPgk0U6tK4L20VCTNJbufSlESIsU620vyTVv/beEcIAlqx1m/rD8o2RM228EyXbNiZ
	 SDBQgev8wOx9x0nh0FR1geOg+/5LPLtX1dOYq7Sevx09h/yPEn8K5XoCwW9UwIVKHl
	 fuKOEaTs33EyjO4TMdIoTR0BvTGHRMJrgHgQ1rHBQT/rIyqGZzr+qbMfvwOcuHZHyT
	 GmcaQve3a1qGg==
Mime-Version: 1.0
Date: Fri, 19 Dec 2025 13:15:04 +0100
Message-Id: <DF26ONGZ03KH.31FVI22UBGJFX@kernel.org>
To: "Alice Ryhl" <aliceryhl@google.com>
From: "Danilo Krummrich" <dakr@kernel.org>
References: <20251128-gpuvm-rust-v1-0-ebf66bf234e0@google.com>
 <20251128-gpuvm-rust-v1-1-ebf66bf234e0@google.com>
In-Reply-To: <20251128-gpuvm-rust-v1-1-ebf66bf234e0@google.com>
X-Spamd-Bar: ---
X-MailFrom: dakr@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MRMXRKE5UJXGQ7AO4BV6SUTR4S345WXD
X-Message-ID-Hash: MRMXRKE5UJXGQ7AO4BV6SUTR4S345WXD
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:05:03 +0000
CC: Daniel Almeida <daniel.almeida@collabora.com>, Matthew Brost <matthew.brost@intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Boris Brezillon <boris.brezillon@collabora.com>, Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Frank Binns <frank.binns@imgtec.com>, Matt Coster <matt.coster@imgtec.com>, Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean
  Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Lyude Paul <lyude@redhat.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/4] drm/gpuvm: take GEM lock inside drm_gpuvm_bo_obtain_prealloc()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MRMXRKE5UJXGQ7AO4BV6SUTR4S345WXD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[2835];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_CC(0.00)[collabora.com,intel.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,arm.com,garyguo.net,protonmail.com,umich.edu,imgtec.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,redhat.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[41];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.958];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dakr@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: DA0AF4116EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri Nov 28, 2025 at 3:14 PM CET, Alice Ryhl wrote:
> +static void
> +drm_gpuvm_bo_destroy_not_in_lists(struct drm_gpuvm_bo *vm_bo)
> +{
> +	struct drm_gpuvm *gpuvm = vm_bo->vm;
> +	const struct drm_gpuvm_ops *ops = gpuvm->ops;
> +	struct drm_gem_object *obj = vm_bo->obj;
> +
> +	if (ops && ops->vm_bo_free)
> +		ops->vm_bo_free(vm_bo);
> +	else
> +		kfree(vm_bo);
> +
> +	drm_gpuvm_put(gpuvm);
> +	drm_gem_object_put(obj);
> +}

I think to us it seems obvious, but I think for new people it might not be. Can
you please add a comment that mentions that this is about the evict and extobj
lists and explains how this is related to locking?
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
