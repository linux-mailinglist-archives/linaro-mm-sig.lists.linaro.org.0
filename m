Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0hQnEIv3Jmq/owIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 08 Jun 2026 19:10:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id AF50765919E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 08 Jun 2026 19:10:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=redhat.com header.s=mimecast20190719 header.b=Ddc7v3Ls;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 647D6409F6
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  8 Jun 2026 17:10:33 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 8A9FA3F7F9
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jun 2026 17:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1780938624;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1jvziielmBQRhjbGDR1LkdWpDfix4f9jfDw9HyW1EWo=;
	b=Ddc7v3LsR1/INJ2BJ2XKEP78vS0KW0ufoH/Hz5PjpFpvC9+FcunbkdNszhOLtzd+hq1DKW
	xyuN/0QJSeT16BDFHWSQrom6d3IDNvypBiIq0eI4vZrlVdetHQZWu8Uqncnru2IHzs6WPc
	mB3oS7w1LokmCjXhq2KPOmohHn8HIMw=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-326-gsK5LUhHNuulUHvbqhZW5A-1; Mon, 08 Jun 2026 13:10:22 -0400
X-MC-Unique: gsK5LUhHNuulUHvbqhZW5A-1
X-Mimecast-MFC-AGG-ID: gsK5LUhHNuulUHvbqhZW5A_1780938622
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-915c364ae3bso397406985a.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Jun 2026 10:10:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780938621; x=1781543421;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1jvziielmBQRhjbGDR1LkdWpDfix4f9jfDw9HyW1EWo=;
        b=NN83kMeS6h47AObz/pcFPd8gsW2Cw/08pm4aNi40WuuYRvXRMJeYlFJbqvh3tf7C1q
         T0fdXQM3NAoxGftUQErGfj9FRRdWdrRG+PicYeo33hE3iSGSLkDHjI/24QmQnEQyTjdm
         O1bOsu/0V7kNmzFQjpAHraHE5gs3WnmJZJp3QbsgY3i4D+LJOUpBgHKGYK18PUiytZrr
         BiSojfQ7SeMvwnxMBtBONDNRS4SLClfZTLnj0ZsJw7596Xgcb7aGYu4s0GLTJyJaNziP
         2sVHxIZ8dVZyAFdPVZMC0jnVz/dEoSJtq/jCg19NDCHcbqEJogAGLVKCJ/lWkZJBrlcV
         sXCg==
X-Forwarded-Encrypted: i=1; AFNElJ+DhBQy8VeN/RS8LnoIK+chCkmbmUmIMsVN81VSr96O5mDi9LfboUgUJ8AaiUpcSHYdv78XSFmEdCBQu8QF@lists.linaro.org
X-Gm-Message-State: AOJu0YyfjbTsGOw9j0pGQK74Vi7hwZpBqJg2vXKfhqJQ0Nuj6yh/Oauz
	bCvcp7zta7k+S7SkSY6gK1jOk4jLtT4bxNtU2mcqS9YoGaozO0AFhtTT5FGnO9p0WFJluMY/1Js
	WqtBsljetFY6k80uHjl4m0JkeXzkNlMz2BNbwUcT+QCNcpQ/TKCQRsasMWis4K/wdvJAY
X-Gm-Gg: Acq92OGtccla4q9C/K1YBqccQujUFg4s1fZn7HeJrV6DI49OhTUm4DlcmnMW5/wMW4z
	e+lVcux1Qf2p45y5e2NBhDMTAiD+VMg/Pi+5toB/aYX4DfCzJKwooJm7DGP1Fd7z4fpPjm2vMZW
	eyzU/OJ6uKnQPxUXD/BSGXZszNSp1vVd5gRlcTtHtsKaP2WPPjiJZ1YZ3hIoEMTq/mNNmNEjh6j
	476DHiaWqqjYAS2i37Z0e2oH3nxY6vZXIdF19bFNiOG9vPMeV7dFr1t67PaF70uPjxRHNNR7AaH
	ZHp9qKxKL7zvk3VXS2VDv4GpEEbCjlCs/GEKsyAeZUU+zmVXjnZBG10ZNHFq2HN6iXg1RasADTf
	0+dRnQ908XTDKQXhSdXzjuJrTy13C
X-Received: by 2002:a05:620a:254a:b0:915:9943:d760 with SMTP id af79cd13be357-915a9db892dmr2520125285a.43.1780938621254;
        Mon, 08 Jun 2026 10:10:21 -0700 (PDT)
X-Received: by 2002:a05:620a:254a:b0:915:9943:d760 with SMTP id af79cd13be357-915a9db892dmr2520115285a.43.1780938620617;
        Mon, 08 Jun 2026 10:10:20 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9158a3bf5f9sm1822479085a.35.2026.06.08.10.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 10:10:19 -0700 (PDT)
Message-ID: <00c7a09eac169e9da541b50396ceaa69ae978c10.camel@redhat.com>
From: lyude@redhat.com
To: Gary Guo <gary@garyguo.net>, dri-devel@lists.freedesktop.org,
	rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org
Date: Mon, 08 Jun 2026 13:10:18 -0400
In-Reply-To: <DJ2TB5AX540T.311A690IK8F9B@garyguo.net>
References: <20260604192740.659240-1-lyude@redhat.com>
	 <20260604192740.659240-2-lyude@redhat.com>
	 <DJ2TB5AX540T.311A690IK8F9B@garyguo.net>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: eM2iHu7H36hNe3ruTptfkyMDcLiT7Bor6EcVGL-VV2E_1780938622
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: -
Message-ID-Hash: MVVAHSXR3FQWV3TFJ4P4PNMCVJDLQVJW
X-Message-ID-Hash: MVVAHSXR3FQWV3TFJ4P4PNMCVJDLQVJW
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Alexandre Courbot <acourbot@nvidia.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Miguel Ojeda <ojeda@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v18 1/4] rust: drm: gem: shmem: Add DmaResvGuard helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MVVAHSXR3FQWV3TFJ4P4PNMCVJDLQVJW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:acourbot@nvidia.com,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:ojeda@kernel.org,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_CC(0.00)[nvidia.com,amd.com,lists.linux.dev,kernel.org,linux.intel.com,google.com,ffwll.ch,vger.kernel.org,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF50765919E

SSB0aGluayBJIGhhdmUganVzdCBiZWVuIGRlZmF1bHRpbmcgdG8gYWx3YXlzIGZvciBhbnl0aGlu
ZyB0aGF0IHNlZW1zDQpsaWtlIGl0IHNob3VsZCBiZSB1bnF1ZXN0aW9uYWJseSBpbmxpbmVkIC0g
c2hvdWxkIEkgYmUgZGVmYXVsdGluZyB0bw0KI1tpbmxpbmVdIGluc3RlYWQ/DQoNCk9uIFN1biwg
MjAyNi0wNi0wNyBhdCAxMzoyMiArMDEwMCwgR2FyeSBHdW8gd3JvdGU6DQo+ID4gK2ltcGw8J2Es
IFQ6IERyaXZlck9iamVjdCwgQzogRGV2aWNlQ29udGV4dD4gRG1hUmVzdkd1YXJkPCdhLCBULCBD
Pg0KPiA+IHsNCj4gPiArwqDCoMKgICNbaW5saW5lKGFsd2F5cyldDQo+IA0KPiBXaHkgYGFsd2F5
c2AgaGVyZT8NCj4gDQo+IEJlc3QsDQo+IEdhcnkNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
