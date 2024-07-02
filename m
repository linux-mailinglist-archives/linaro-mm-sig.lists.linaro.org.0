Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C817924212
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jul 2024 17:15:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D054C40F28
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jul 2024 15:15:36 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lists.linaro.org (Postfix) with ESMTPS id 647EF3F3AB
	for <linaro-mm-sig@lists.linaro.org>; Tue,  2 Jul 2024 15:15:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=XD1Slznt;
	spf=pass (lists.linaro.org: domain of surenb@google.com designates 209.85.128.175 as permitted sender) smtp.mailfrom=surenb@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-65011d9bd75so7745037b3.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Jul 2024 08:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719933334; x=1720538134; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cNWhwi3BuKwIDlYJ+Eok6lmEciKDFhWO/KDN1iS7pU8=;
        b=XD1Slznt+adLNuSmt/quMxwf8Syvj92d6nbK8M7X70A/aFKhy7UAWmVP4SrbXoz8pd
         7tf0MMpOtFukTyybRfN2GNpQz753JNAiSZgUnVM2aR5+pfd8MyvCBnn+HxndDieCUtUu
         USDALXKeCtSI+pTgNTs/fCHaaXBqkduaobvRSsosBMoXz/rA4eKu4yAvlIbUDvlKAuE4
         C+izuscjhnfqbeYnaHtdnX1nHfi1zWFg0IS59JnXFjxYy7oL8JCjQ0EqbCe7sy6VLqhr
         XLseGbIPVy7NVI3bDfXFSCP6WbkOaTS8wKMVUW7Xa90/ZIEcOIkwGsGS1omyiFCM8xSv
         lpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719933334; x=1720538134;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cNWhwi3BuKwIDlYJ+Eok6lmEciKDFhWO/KDN1iS7pU8=;
        b=fTiLk7Uhp2+NEdialBcD7YezZ/tqEty6Hvko4LEvSuzlXzisejfrkTWmx/ez2/t2NQ
         StjkxrO9wZneKH4gKSWEir1EhUV3SjT1RR8g2s08zshfyQI7qcfUmI0Ht6uN+EU/t6qr
         +q6VbpgOyTlcPyfGH1hEjPcp0eU8wenPpoAh8oWKfhhA+767QVH8dVtq5F6/4kjaPvRH
         Djlsk/UxKuUgFFu62TMB1vTdBAyfB5iIQfImLdFu+C7knQMAel90+H2eA8kvNA6r/G0c
         NXznq9JPE+zpa96mHejlVvMq1YSk6zuCA8RNuI+nmtSeTOLBNjwyNKnGUm9mBgMQje0S
         aKlg==
X-Forwarded-Encrypted: i=1; AJvYcCUQ0JrjcT94ryaPqBO/DIFA8YhmHYpW75bMdeELgLqeb9wTsX82ZZUa1OQean4YgbvS/tEiHh/W0DECSGZuKqgjidmd0o43DImywTnYk54=
X-Gm-Message-State: AOJu0YzrCR9bLEr4LByWvgsRLYYomX5cRIEt/t4SW+fSDUUPon9QuvF4
	+gtQuOMKMxNjBoJflv3zHk5+Amxu+oY2D6NiAdq1/iGfDS21dOEFaFrl3lhj2uuZu0+1CFMPOWn
	vYeFZjHn7w4oTgnHTR6SMnIDl61nTi3vnS2b8
X-Google-Smtp-Source: AGHT+IG2EeoEjGrNJPimBuxzgEbGPnYMmLCli/IQeFkWY+JfiCJPJ3fhsOk218T1gggIpWBX9AKMu5hfbJ1J9S3AKQI=
X-Received: by 2002:a81:ae17:0:b0:650:9799:41d2 with SMTP id
 00721157ae682-6509799460cmr10823267b3.30.1719933333549; Tue, 02 Jul 2024
 08:15:33 -0700 (PDT)
MIME-Version: 1.0
References: <20240630011215.42525-1-thorsten.blum@toblux.com>
 <20240701232634.0bddb542ddea123b48dcabdf@linux-foundation.org>
 <20240702064017.GA24838@lst.de> <e0f384b0-6913-4224-a3ea-bdae784f5dab@amd.com>
 <20240702003357.6bfd1d918c56d536bb664c37@linux-foundation.org>
In-Reply-To: <20240702003357.6bfd1d918c56d536bb664c37@linux-foundation.org>
From: Suren Baghdasaryan <surenb@google.com>
Date: Tue, 2 Jul 2024 15:15:19 +0000
Message-ID: <CAJuCfpFCiUfpa45rG74zd-KoQcaA2fwgUw86iSF2CDiFrXCOdA@mail.gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-Rspamd-Queue-Id: 647EF3F3AB
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.175:from];
	URIBL_BLOCKED(0.00)[mail-yw1-f175.google.com:helo,mail-yw1-f175.google.com:rdns,linux-foundation.org:email,amd.com:email];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: I25DEQFPY7WTK3FDA3G3ZY5WAFVCXB4K
X-Message-ID-Hash: I25DEQFPY7WTK3FDA3G3ZY5WAFVCXB4K
X-MailFrom: surenb@google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Christoph Hellwig <hch@lst.de>, Thorsten Blum <thorsten.blum@toblux.com>, jack@suse.cz, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Remove unnecessary kmalloc() cast
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/I25DEQFPY7WTK3FDA3G3ZY5WAFVCXB4K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdWwgMiwgMjAyNCBhdCA3OjM04oCvQU0gQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51
eC1mb3VuZGF0aW9uLm9yZz4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgMiBKdWwgMjAyNCAwOToxMzoz
NSArMDIwMCBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3Rl
Og0KPg0KPiA+IHllcyB0aGF0IGlzDQo+ID4gaW50ZW50aW9uYWxseSBhIGRlZmluZSBhbmQgbm90
IGFuIGlubGluZSBmdW5jdGlvbi4NCj4gPg0KPiA+IFNlZSB0aGlzIHBhdGNoIGhlcmUgd2hpY2gg
Y2hhbmdlZCB0aGF0Og0KPiA+DQo+ID4gY29tbWl0IDJjMzIxZjNmNzBiYzI4NDUxMDU5OGY3MTJi
NzAyY2U4ZDYwYzRkMTQNCj4gPiBBdXRob3I6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8c3VyZW5iQGdv
b2dsZS5jb20+DQo+ID4gRGF0ZTogICBTdW4gQXByIDE0IDE5OjA3OjMxIDIwMjQgLTA3MDANCj4g
Pg0KPiA+ICAgICAgbW06IGNoYW5nZSBpbmxpbmVkIGFsbG9jYXRpb24gaGVscGVycyB0byBhY2Nv
dW50IGF0IHRoZSBjYWxsIHNpdGUNCj4NCj4gRGFuZywgeWVzLCB0aGF0IHdhcyBhIHJlZ3JldHRh
YmxlIGNoYW5nZS4gIEJ1dCBoYXJkbHkgdGhlIGVuZCBvZiB0aGUNCj4gd29ybGQuICBJIGRvIHRo
aW5rIGVhY2ggc3VjaCBhbHRlcmF0aW9uIHNob3VsZCBoYXZlIGluY2x1ZGVkIGEgY29tbWVudA0K
PiB0byBwcmV2ZW50IHBlb3BsZSBmcm9tIGdvaW5nIGFuZCBjbGVhbmluZyB0aGVtIHVwLg0KDQpT
b3JyeSBJIG1pc3NlZCB0aGlzIGRpc2N1c3Npb24uIFllcywgdGhlIGRlZmluaXRpb24gd2FzIGlu
dGVudGlvbmFsDQphbmQgSSB3aWxsIGFkZCBjb21tZW50cyBmb3IgYWxsIHRoZSBjYXNlcyB3aGlj
aCB3ZXJlIGNoYW5nZWQgdGhpcyB3YXkuDQpUaGFua3MsDQpTdXJlbi4NCg0KPg0KPg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
