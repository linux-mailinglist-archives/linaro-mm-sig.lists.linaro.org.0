Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YONFDVhR6Wl2XgIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 00:53:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9842944B5CD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Apr 2026 00:53:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41B4A3F9B4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Apr 2026 22:53:10 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 863543F9B4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Apr 2026 22:53:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=UlSkP8yL;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lyude@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776898381;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LNEiiKAr8tGgxUxPcWc2lJsVUeALFhcpoNoEGS7JOyc=;
	b=UlSkP8yLGSSqGxDJ1XOe9SuMcKE4g22tQT5kqxy7BE0VmRNR4Mn4xrHua2iVx1UeqNeAYa
	KTh9qC02BTWPomaLemDqSLtstti6gCMOQ9R/t5bcBq+OWZ5UGgD5fZiE5byG62oLpb4NaC
	22FeXr+/kbZ4XBtbhTE0llx3n4aPLlE=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-392-RzJX4BmdOI6ALYjd5R62kA-1; Wed, 22 Apr 2026 18:52:59 -0400
X-MC-Unique: RzJX4BmdOI6ALYjd5R62kA-1
X-Mimecast-MFC-AGG-ID: RzJX4BmdOI6ALYjd5R62kA_1776898379
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50e136aff17so115002491cf.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 Apr 2026 15:52:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776898379; x=1777503179;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mDXm7aAVELWsp3pvLIzbso12bneOyuVrRAMZreDRWg0=;
        b=Cx3CfeFONKBETnxiSnezjO1yP2Y3jTS4rwn2dm7xYm12+b3t9HVP9aiUDMvRnf1We2
         kFKvkwSZJo08ZGkNK+h9hq2U2lV1qtsghCeuOddfCHGRU29cjEAt1QUwMYpDg6hQ36NE
         5t8TVfuPFU/hgcwSweQVrj0utZlUMHPfHthrnin9HJFQ+5VrEP7oEB6bcK5Yk/eSURO2
         2CurNwpHsz6o+eguYNoyAbexpCsSRgYFvUuyu2A6+k9qfQRgnY/ottq4yUZfmlgyMgPF
         3L/MLSM+Tk8Cg7q3Mlu5bLLkrdqu/HBf0WcSRJcVIf1qTi/lgzKHZD3x0WpUrrjib0LJ
         XAkA==
X-Forwarded-Encrypted: i=1; AFNElJ8gThkUzsrIWRnsUvOelVcmEzyzOE9TjTyWD0ShAyT5jerhHkj7n31FTp5dN0h3dh1FvPkfjZLz3n5f1Wky@lists.linaro.org
X-Gm-Message-State: AOJu0YzEO3TNjCMipsh5SEHmN6SR81WsWzo3yNnOybUeUk0qVvVhE/Vr
	miMawu/NE4bw5TSaU2M40aVBoilURhkvsdl03YGmOhorMz3L/+OPtO6XygDDpeWjfXTgWsYTN1m
	aE0pBisPJNYJCNwZ4BAbkpHnhgRqSZ1OpNCcxLXjgzEzpY+Ev7hkKEhnLXDxam3JrNj8t
X-Gm-Gg: AeBDiesTz0qK1+f+7kVE5xctYtJojA8erUP9AJtxn/lCpdvmsExXIe/RtBX9gqL4b0f
	kpb025EaHCV5b/+lpI5I38DEbJoUDANpSD1dUY1B4/LsicXismSvG4H4BWyUi4tlaSDCH5GS+E8
	tSt2eptmzExTpQW7z8XOg4LO4u5M9I+XjdUE+agjD3G0mGD9mLsrj5HZkxtuU+sZxaC8bwNdm7i
	JVrxWZFLYsCH2EwbmA1Od90E1ODFoHMKCr0xa6YerCeYIM0aFAloucqQPb2Nyf8s1Zvhx8PLI8y
	t0wEH6KxywN9mEEQ1VtLBBK+fitbkRtuK1sQczLaAX3p9G3KJoh6JzjzhcZ8BH8U1dR9+Gvb0aB
	M5j/6EsQsikC/+K4tFLi9l/wXRkUO
X-Received: by 2002:a05:622a:4086:b0:50b:2876:586 with SMTP id d75a77b69052e-50e36820d3emr367722041cf.5.1776898379369;
        Wed, 22 Apr 2026 15:52:59 -0700 (PDT)
X-Received: by 2002:a05:622a:4086:b0:50b:2876:586 with SMTP id d75a77b69052e-50e36820d3emr367721591cf.5.1776898378914;
        Wed, 22 Apr 2026 15:52:58 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50e394c1fddsm151910251cf.30.2026.04.22.15.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 15:52:58 -0700 (PDT)
Message-ID: <1b2d926b919471fd3fbaf5b79d47e1110f6c4797.camel@redhat.com>
From: lyude@redhat.com
To: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel
 Almeida	 <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org,
 Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org
Date: Wed, 22 Apr 2026 18:52:57 -0400
In-Reply-To: <20260421235346.672794-3-lyude@redhat.com>
References: <20260421235346.672794-1-lyude@redhat.com>
	 <20260421235346.672794-3-lyude@redhat.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 39417mroveRMKAQNGhN1xtkDV_bSVD-Vn1tZQJ9cB1M_1776898379
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ---
Message-ID-Hash: WN22KAOVEOWIGFBZGGR7AGJ352MXOG7O
X-Message-ID-Hash: WN22KAOVEOWIGFBZGGR7AGJ352MXOG7O
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 2/5] drm/gem/shmem: Introduce __drm_gem_shmem_free_sgt_locked()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WN22KAOVEOWIGFBZGGR7AGJ352MXOG7O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[google.com,gmail.com,oracle.com,amd.com,asahilina.net,kernel.org,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org,linuxfoundation.org];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9842944B5CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 2026-04-21 at 19:52 -0400, Lyude Paul wrote:
> +/**
> + * __drm_gem_shmem_release_sgt_locked - Unpin and DMA unmap pages,
> and release the
> + * cached scatter/gather table for an shmem GEM object.

It appears that I misnamed the function in this somehow still, so I
will make note of this and make sure that it gets fixed in the next
respin of this series

> + * @shmem: shmem GEM object
> + *
> + * If the passed shmem object has an active scatter/gather table for
> driver
> + * usage, this function will unmap it and release the memory
> associated with it.
> + * It is the responsibility of the caller to ensure it holds the
> dma_resv_lock
> + * for this object.
> + *
> + * Drivers should not need to call this function themselves, it is
> mainly
> + * intended for usage in the Rust shmem bindings.
> + */
> +void __drm_gem_shmem_free_sgt_locked(struct drm_gem_shmem_object
> *shmem)
> +{
> +	dma_resv_assert_held(shmem->base.resv);
> +
> +	dma_unmap_sgtable(shmem->base.dev->dev, shmem->sgt,
> DMA_BIDIRECTIONAL, 0);
> +	sg_free_table(shmem->sgt);
> +	kfree(shmem->sgt);
> +	shmem->sgt = NULL;
> +}
> +EXPORT_SYMBOL_GPL(__drm_gem_shmem_free_sgt_locked);

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
