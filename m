Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNjwBOay62kJQgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 20:13:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A130C4624F4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 20:13:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 01E1140690
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 18:13:56 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id 999924047B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 18:13:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=flTNSQDk;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=lyude@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777054433;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OeQosteTdD6VM7jZXWeJNravgroMD7pnnDdWYomsqZs=;
	b=flTNSQDk4iGEkK+XzM5UOP44uM8sB70PtTTtL0NOai7cYIce116BgAbxlWnAZaz4SfXOST
	JgQlSNpXslPqR2G0CB20PJ71GQkumZyfdS7+nI/nSj7Zec8rb9j1kj7eHzy7rDyEBujvOK
	EfJJ1LvxCauF/5jS8j2btPg4YJ6mZOg=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-507-NnF-Pm80PRGDXqJgJtKexQ-1; Fri, 24 Apr 2026 14:13:52 -0400
X-MC-Unique: NnF-Pm80PRGDXqJgJtKexQ-1
X-Mimecast-MFC-AGG-ID: NnF-Pm80PRGDXqJgJtKexQ_1777054431
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8ac9609d3d6so204976616d6.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 11:13:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777054431; x=1777659231;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OeQosteTdD6VM7jZXWeJNravgroMD7pnnDdWYomsqZs=;
        b=qk5WIW5NOeIsRvnl71sgn80rPEMVALR0twO7NfDFgBFtOb+aGva4CaXc3oYXCef5Uf
         5X6VYJMghZCeVbZSbkJSdnHWuI18GZI85m6ozFcIChac6rNcXvOL1tYXbKr2z/7UP/qW
         IIQhCwg3kXneClrzmori5hCkxon99H6X4NH2QAfFxR/iDhOdKMuL1epKKhySmWNBSpEG
         xYjZ0MWe02SE7EA7y5UHFUf0YQby2at10oQO9MR7lyBas+HZ8v2ytPMcsRZ94QZtlE7U
         +A/r191vUXbQCPCWjz255cBEskQvp3kUlkIirMQwMYY7Ch27pAO4HBjTQMh7/gagSkKG
         wQJw==
X-Forwarded-Encrypted: i=1; AFNElJ/svXoqJz+TihGSaQy8Srn1fuemr76vH/lRAXVvkHKJ+vQBL8jPL9mPZmrx4S5Qb7YlIEa+kJmrpQgcH1DX@lists.linaro.org
X-Gm-Message-State: AOJu0YyjLYrYljuAsHemrNp5/7cykByhcpIGK+X+pEW08L/epcMRuicf
	XJXsHGTJMJlKPu2ammZ5VwpCkcgp9WhzHfX+MgCSXHmIvijAuvuJ9ueyNaJviNkXTOHTAqaOOIZ
	rdcA7Vdz+rl6ODaVTtPiX5NXZsb79DL46+3xJwuEiqC4js/5RGkK3wHcdvKyGuETtlLRF
X-Gm-Gg: AeBDievpropFBza6XxwLKcGC+XynoLWYfuWuPSC4WU2YanHcVQdI86HeFI7vH3ubSxE
	nz40Nfxn6p6d+YB7r1BxQxYjz9xkKM1UlRSeRTmO0kJEGQCNzAPLjiu8PyAZeXMnMbBGvlEbDge
	PmhwZojqPo0X+AtsKpyQSwTTutVwo+4ior9t28mjANbmTCRYX1DwtntYJUoC+qMxeEro8h81L70
	7sV6D5bE6JxOq0FHARHMMsvErhyieD3smNtS3heSRsmPBfEmANCGIxxgIKcD9dXaOfKlj7/75no
	lmSvBoWTss0jcULDf6gTCzTRixnxhWQTS/T2SL4K9EubYp2YVFmcCGLgwid72DVRJe2MPpv/bAD
	m1DZncei/nCaI+T7IqErPAy3Dt8ao
X-Received: by 2002:a05:6214:27c2:b0:8ac:ab30:fffa with SMTP id 6a1803df08f44-8b03addd7bdmr442488176d6.32.1777054431182;
        Fri, 24 Apr 2026 11:13:51 -0700 (PDT)
X-Received: by 2002:a05:6214:27c2:b0:8ac:ab30:fffa with SMTP id 6a1803df08f44-8b03addd7bdmr442487526d6.32.1777054430667;
        Fri, 24 Apr 2026 11:13:50 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b02ae86947sm253378776d6.37.2026.04.24.11.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 11:13:50 -0700 (PDT)
Message-ID: <4bccf3d1ab49dfdff29a69b2040c4d0aef0e87e3.camel@redhat.com>
From: lyude@redhat.com
To: Alexandre Courbot <acourbot@nvidia.com>
Date: Fri, 24 Apr 2026 14:13:49 -0400
In-Reply-To: <DI0MI6UF325Y.2TDWZGCN3WGIG@nvidia.com>
References: <20260421235346.672794-1-lyude@redhat.com>
	 <20260421235346.672794-5-lyude@redhat.com>
	 <DI0MI6UF325Y.2TDWZGCN3WGIG@nvidia.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: T1-nV7oEnmsyTTvgJ2xJUxrzS8VPU-orugvW1e80YEs_1777054431
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: -----
Message-ID-Hash: 3ZNXQSVME4TKCAB55E453XKQOYWMVZW3
X-Message-ID-Hash: 3ZNXQSVME4TKCAB55E453XKQOYWMVZW3
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 4/5] rust: drm: gem: Introduce shmem::SGTable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3ZNXQSVME4TKCAB55E453XKQOYWMVZW3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: A130C4624F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	NEURAL_HAM(-0.00)[-0.978];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]

T24gRnJpLCAyMDI2LTA0LTI0IGF0IDAwOjAxICswOTAwLCBBbGV4YW5kcmUgQ291cmJvdCB3cm90
ZToNCj4gDQo+IFRoaXMgZmFpbHMgb24gbWFzdGVyOg0KPiANCj4gwqDCoMKgIGVycm9yW0UwNDMy
XTogdW5yZXNvbHZlZCBpbXBvcnQgYGNyYXRlOjpzeW5jOjpBUmVmYA0KPiDCoMKgwqDCoMKgIC0t
PiAuLi9ydXN0L2tlcm5lbC9kcm0vZ2VtL3NobWVtLnJzOjM2OjUNCj4gwqDCoMKgwqDCoCB8DQo+
IMKgwqDCoCAzNiB8wqDCoMKgwqAgc3luYzo6QVJlZiwNCj4gwqDCoMKgwqDCoCB8wqDCoMKgwqAg
Xl5eXl5eXl5eXiBubyBgQVJlZmAgaW4gYHN5bmNgDQo+IA0KPiBJbXBvcnRpbmcgYHN5bmM6OmFy
ZWY6OkFSZWZgIHNlZW1zIHRvIGJlIHRoZSBjb3JyZWN0IHdheSBub3cuDQoNCkZXSVc6IGFzIEkg
bWVudGlvbmVkIGluIHRoZSBjb3ZlciBsZXR0ZXIsIHRoaXMgc2VyaWVzIGFwcGxpZXMgYWdhaW5z
dA0KZHJtLXJ1c3QtbmV4dCAtIG5vdCBtYXN0ZXIuDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
