Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wEOBByEd8mm/oAEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 17:00:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B15D4496701
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 17:00:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9BE040475
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 15:00:39 +0000 (UTC)
Received: from mail-wr1-f73.google.com (mail-wr1-f73.google.com [209.85.221.73])
	by lists.linaro.org (Postfix) with ESMTPS id A5D913F7F1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 08:19:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=Eunp4LiZ;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3Hr_xaQkKDbkZkhbdqxgkfnnfkd.bnlkhmZqn-ll-rhfkhrsr.khmZqn.nqf@flex--aliceryhl.bounces.google.com designates 209.85.221.73 as permitted sender) smtp.mailfrom=3Hr_xaQkKDbkZkhbdqxgkfnnfkd.bnlkhmZqn-ll-rhfkhrsr.khmZqn.nqf@flex--aliceryhl.bounces.google.com
Received: by mail-wr1-f73.google.com with SMTP id ffacd0b85a97d-4411a1f9601so8422652f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 01:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777450783; x=1778055583; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=UnWFkQyHgeOIkEs/wIKBFV9O4AMa1adBSTGrokeVPN0=;
        b=Eunp4LiZy42K052lhN7oxvGWSv2TMxjHnF8Z/9oQ+QDCs3ft4Q48qFKHV1OkR2HJzs
         euDNiA59y7TM3iqVnvzaVnq9ECHsEgQNoex4Rhnr7oDa9Qq95AOQtjy+SKPMnHTWz6d0
         2V8gLSfABe7kdbZ/bFPU1KK4L82d33gqUAxzTIm4sz1NnL0lKdVM8nny6qtijmCVenGK
         bqUk0AcMznj4LmKZP8fnxxzU+tXK916Lg7nNuxZvMRH5huIIBFiCiJPHl0n/IuNbikKz
         05u0i7K8llKZFtIQ8AyGncWB473+YMTYW/LvkBnKWzn1tSJFob8p4Y8FiU27aJY9Sv8s
         0s8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777450783; x=1778055583;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UnWFkQyHgeOIkEs/wIKBFV9O4AMa1adBSTGrokeVPN0=;
        b=BrIau5JdKGc2WaDN/p0VTugszeoyHmqNOxlbBdzVmmfyRSSxdad7jYCpD4JdUe7HuP
         /raDlE1Yf4ZpbGqRB8jpnSjwRW8/8USABojRm/lgdMu825T02+Bi1iDfnnaPxEMMwh56
         hcfUVgl50wiySKF6/dR3VResgzgajBihGDXfTrAUw7yvUDKLX/PS38UKiVvdDU+YS/Z4
         ECg1qOoAE2vXUFni2dyCJY2XTvnmlZznKxPWAmfphdz3UN0Bhl8V1OS6b+jSkFdSWv9S
         GvJD9KscrW3E0qVBOnl9qbzIQjxYjwoNttLQrS1MSTOUnYqLqXl5ZrRF30nZkq++JipX
         mveQ==
X-Forwarded-Encrypted: i=1; AFNElJ+wTEJNOJ4n6c2TUkSMdfmI0bLZ+4BhWwnAYOXPwiqUUlWhUysPOXQnPC0wsUZS75i0RO6WHXoABAjDsOMO@lists.linaro.org
X-Gm-Message-State: AOJu0YxlBFXQ1E/6+VMu9VriXc+r+h0cfTS0w0NMqZ5gUCsaiDtS5CGb
	MzDwX9pYra+WIsIvdPBX4msALuJ6ClhjUyLIbjWUnHZmVg9OBzeSFZdrQzj2qppcYlSdqQ0ZI+m
	oHfDHpnlciGRDgmZV8g==
X-Received: from wrve6.prod.google.com ([2002:a5d:5306:0:b0:43c:f94d:a0b5])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6000:616:b0:43f:e43a:d85d with SMTP id ffacd0b85a97d-44648f28d2amr11438300f8f.3.1777450782265;
 Wed, 29 Apr 2026 01:19:42 -0700 (PDT)
Date: Wed, 29 Apr 2026 08:19:41 +0000
In-Reply-To: <20260428190605.3355690-5-lyude@redhat.com>
Mime-Version: 1.0
References: <20260428190605.3355690-1-lyude@redhat.com> <20260428190605.3355690-5-lyude@redhat.com>
Message-ID: <afG_HUjCMH2qKjPS@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Lyude Paul <lyude@redhat.com>
X-Spamd-Bar: -
X-MailFrom: 3Hr_xaQkKDbkZkhbdqxgkfnnfkd.bnlkhmZqn-ll-rhfkhrsr.khmZqn.nqf@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SIRVZCK2SPWTXIXTJSVO46N2EANCVRXW
X-Message-ID-Hash: SIRVZCK2SPWTXIXTJSVO46N2EANCVRXW
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:31:07 +0000
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v13 4/5] rust: drm: gem: Introduce shmem::SGTable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SIRVZCK2SPWTXIXTJSVO46N2EANCVRXW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B15D4496701
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	NEURAL_SPAM(0.00)[0.938];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]

On Tue, Apr 28, 2026 at 03:03:44PM -0400, Lyude Paul wrote:
> In order to do this, we need to be careful to ensure that any interface we
> expose for scatterlists ensures that any mappings created from one are
> destroyed on driver-unbind. To do this, we introduce a Devres resource into
> shmem::Object that we use in order to ensure that we release any SGTable
> mappings on driver-unbind. We store this in an UnsafeCell and protect

Outdated? No longer UnsafeCell.

> access to it using the dma_resv lock that we already have from the shmem
> gem object, which is the same lock that currently protects
> drm_gem_object_shmem->sgt.
> 
> We also provide two different methods for acquiring an sg table:
> self.sg_table(), and self.owned_sg_table(). The first function is for
> short-term uses of mapped SGTables, the second is for callers that need to
> hold onto the mapped SGTable for an extended period of time. The second
> variant uses Devres of course, whereas the first simply relies on rust's
> borrow checker to prevent driver-unbind when using the mapped SGTable.
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>

>      obj: Opaque<bindings::drm_gem_shmem_object>,
>      /// Parent object that owns this object's DMA reservation object.
>      parent_resv_obj: Option<ARef<Object<T>>>,
> +    /// Devres object for unmapping any SGTable on driver-unbind.
> +    /// TODO: Drop the mutex once we can use Init with SetOnce.
> +    #[pin]
> +    sgt_res: Mutex<SetOnce<Devres<SGTableMap<T>>>>,

As far as I can tell, you don't need this Mutex. Also, it causes
problems like requiring the reference transmute below.

Alice
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
