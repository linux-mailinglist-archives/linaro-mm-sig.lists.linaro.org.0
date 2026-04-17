Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBKnCAWO4mkc7QAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Apr 2026 21:46:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D608541E5A6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Apr 2026 21:46:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC7CC3F716
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 17 Apr 2026 19:46:07 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 1BBB33F716
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Apr 2026 19:45:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=Jx4ahSJ7;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=lyude@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1776455156;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JyF/IwexmA4DSB1w6L4ViBDKOIzXHAQn3+2YDMuup0k=;
	b=Jx4ahSJ7BogJhhKDxUjAmYdeRiJe5ufGIP4fT8PnYUG3fM98EYtof1mHDEg0fjP/K+kpVC
	QGZrR07kF6u9T/2YSTjYaua6Ngaad9D2aaVyFiZrubPuRwNRtpoN0kVs/lCgAY2w9IkcgG
	0Qy0OJR7fvreYy5QCvo5MeaxfSgZAg8=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-361-JGz1EvwkNp-7VWF_54ScRw-1; Fri, 17 Apr 2026 15:45:55 -0400
X-MC-Unique: JGz1EvwkNp-7VWF_54ScRw-1
X-Mimecast-MFC-AGG-ID: JGz1EvwkNp-7VWF_54ScRw_1776455155
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50d8e4c29caso24805071cf.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Apr 2026 12:45:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776455155; x=1777059955;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JyF/IwexmA4DSB1w6L4ViBDKOIzXHAQn3+2YDMuup0k=;
        b=F6A027QLLQm8BCzGZGRi0XwT56CVw7lntwg9/k4sxLJF71wG9bkcLWo8AcBOYSVkp2
         OhtbsAZJjZeUgJnMScLgQJZemBvR94FNf9ZhDxk0gdbWjk4V86nBMwSnPnGy6AAqDmFr
         MHY2hKz+KUwPtRd3rEih6vI8bZ76jhXqEy3gInn4mRfhIqtZfVKyLDkLRoZnmSXTco6y
         VtK1MBajYs5Dp8YpVxeivyjbvSsrEUBW96P1O4/rq++5hNWE39OL8IMxVTNIvzDZd8EW
         GsgS6KoblUjD0gAvBdXj0zEFxH4h3/D/dsOsK7fHeh1Mn5aGredQHpTvDhZWgcQ444Cv
         wQ0A==
X-Forwarded-Encrypted: i=1; AFNElJ/9wHhwcdLMnwR1L706KQhciBqITg9fUQtBayLNXrw9KbLuWqbsswPllF2jcm0ZZDx39yS9PdROzKvHogH7@lists.linaro.org
X-Gm-Message-State: AOJu0YyshUVEPIL03U1xLqjm6muslWTiBcxAhDslUozXZNbBiHmhgx7p
	EjHuLNRN+6oZI/j+p24GUESJkhvGCc6k2VNpA0YowyvDRnuNUmJeic5vhD9LXrD0JpJS81YXCNF
	l0xtT/gNs3CVVDZyIQcsM4mBr92NW96ArEpk+JeDdNknG1dgXTbtntYqDQk4V4rbJs5yH
X-Gm-Gg: AeBDiet5EVihcjfDwMtd32zStDLYanpeQRei4pywi6hOJPA0OueARnaU5/YEDCwpQDy
	sW5s8wJ6JO3R66UNK8AOhYZXtz3fdeBUkJIBjId2NxSLl4nhA0SUgYGFYszniCPVfy2pkIWUiN+
	dQs1ERJxWtOZRw7gLVacaGJX1B+u42YywSS2VgwdwjJkrHqeNCTutedBgQMj9iwiVDjmTQzhRtM
	Sy/imBectij9Y8oi3tTsUCXlSNiIH7gmCFWtWOmi7cqiP8jZi8TdkSk1VjKdaXnm78tAT025nZZ
	L44Z9cYFc4HOJq8c8lLrnzMR/O1F8Y+v7m9xMyEoVLNmFufl4i+yBujYupJOpuVUyj8C2FM92Me
	m106p7Y/JkpvXvnJX4ln3HB6JDG2U
X-Received: by 2002:a05:622a:1189:b0:50d:84a7:72d0 with SMTP id d75a77b69052e-50e36e9c0c7mr60319341cf.36.1776455155127;
        Fri, 17 Apr 2026 12:45:55 -0700 (PDT)
X-Received: by 2002:a05:622a:1189:b0:50d:84a7:72d0 with SMTP id d75a77b69052e-50e36e9c0c7mr60319041cf.36.1776455154662;
        Fri, 17 Apr 2026 12:45:54 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b02ae97347sm18023616d6.41.2026.04.17.12.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 12:45:54 -0700 (PDT)
Message-ID: <34695156e1db9195eee105bcfd89b554b6ad32cd.camel@redhat.com>
From: lyude@redhat.com
To: Alexandre Courbot <acourbot@nvidia.com>
Date: Fri, 17 Apr 2026 15:45:52 -0400
In-Reply-To: <ba9d6fbd12a42d95e6349e232111d5e72e88e1d3.camel@redhat.com>
References: <20260409001559.622026-1-lyude@redhat.com>
		 <20260409001559.622026-5-lyude@redhat.com>
		 <DHPBAVQHIM11.XVBHOWYFRITF@nvidia.com>
	 <ba9d6fbd12a42d95e6349e232111d5e72e88e1d3.camel@redhat.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: CyyQ02rw2puLR6KFKspdGagnijS8dgOAYSI1Jkg28yc_1776455155
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ---
Message-ID-Hash: WEFKKGOFFN2RRQ227S2BWP74KWDHSTEG
X-Message-ID-Hash: WEFKKGOFFN2RRQ227S2BWP74KWDHSTEG
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 4/5] rust: drm: gem: Introduce shmem::SGTable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WEFKKGOFFN2RRQ227S2BWP74KWDHSTEG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.846];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: D608541E5A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

...realized the moment I sent this I meant to say labeled block
expressions, but also I realized I won't need those either anyhow :).

On Fri, 2026-04-17 at 15:44 -0400, lyude@redhat.com wrote:
> Just so it doesn't come as a surprise in the next respin - I don't
> really see a reasonable way of using get_or_insert_with() here
> (though
> I had no idea this was a thing!). However - I can get rid of all of
> the
> ret = statements and also clean up the indenting a little bit with
> block expressions as I forgot those exist.
> 
> On Fri, 2026-04-10 at 16:55 +0900, Alexandre Courbot wrote:
> > 
> > nit: let's use `let ret = if let Some(sgt_res) ...` to avoid the
> > multiple `ret = `statements?
> > 
> > Or maybe even better, you might be able to use
> > `Option::get_or_insert_with`.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
