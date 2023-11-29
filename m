Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3588A7FE1A8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Nov 2023 22:19:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 07D2043BBC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Nov 2023 21:19:01 +0000 (UTC)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by lists.linaro.org (Postfix) with ESMTPS id 410353F705
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Nov 2023 21:18:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=DUdVcrbd;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.167.172 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3b2e330033fso130681b6e.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Nov 2023 13:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701292730; x=1701897530; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WS8gBGQpXQrZRMsSNBag3Tt7HvnBrgRu9OXK2ug1d00=;
        b=DUdVcrbdBUeTBNw+xo12cvzJM6+0qTHVlRTCfWsyx6l5dnrlfDCX2wDonMn4j5XNzy
         sQdXxQaHiVDlicN41KlRnSjicriB2IKycN3REomFVXj2oBvQgb7RbtHbqNIcHYbKmJrM
         05NUWAqIyVP4dxB2DOVZlSSL07h3mFZji/iREI6Y7MH6oFNMq6D0V2gGlAOKzM7XxJuP
         +W0YzIISTaRo9SHIYue351lf6X915V/ls4R45fks7tIf0y8ydprx/EtQjnhalEh7barO
         ogl/pemUyhqWqQe6AcLvw+ou/SUK1L+ApB6SXEEyEb63p1h9ZxCXbncvERr9sQvr5cwK
         y/QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701292730; x=1701897530;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WS8gBGQpXQrZRMsSNBag3Tt7HvnBrgRu9OXK2ug1d00=;
        b=PhYRlvIE0Hp6AL7lYJkmYESQtLnJISwElh3pZQngdV6u3cFT3NmLDdZIIOWw+Z2KB1
         n/Ug3PShhp+KYTXZYm+4c0+oQicPq1yuWD0vLR2FO7HYttv8qUoCl3cUNL8JiEjIM+kH
         6fBh5ID0PoBN2S6RTcy3+LLI/J2OsaFbAlvHGVeVfd2uHKP+VYCfzFGbFLCXeizScVpr
         72xqxqaeUGByNcwbSEsjCBlBtxSW6YZJ0tGw4AHP+0+dj75CjGigeD4jtcBqvKh3ATUn
         hUkbpsIgQTQzI1qeDEiIJCjULHWkQuTwb8s8eNuFY2gJOu3P3APZrXxlM5jg4l3+citl
         F0QA==
X-Gm-Message-State: AOJu0YxlARM2dtfO6qCZHVzmZ23PMlUcRGzXf3cPTmq6GToHyhfMUymr
	FzEDJ3h+fE8C6Li9ISkTteUTflf1X3JR8UTwGVE=
X-Google-Smtp-Source: AGHT+IHoa2uzgpSCk5/ua6lNSfqbjchnHD4WUwl8N9K8d67JpoJqLMPCK5zWvuA0I1GukMTG2oUufTYweHYHVEnlxdM=
X-Received: by 2002:a05:6871:810:b0:1fa:79c:ad71 with SMTP id
 q16-20020a056871081000b001fa079cad71mr17816587oap.39.1701292730655; Wed, 29
 Nov 2023 13:18:50 -0800 (PST)
MIME-Version: 1.0
References: <20231122160556.24948-1-Ramesh.Errabolu@amd.com> <c5ae3f32-0779-4583-8fe6-92f5dea5ede6@amd.com>
In-Reply-To: <c5ae3f32-0779-4583-8fe6-92f5dea5ede6@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 29 Nov 2023 16:18:39 -0500
Message-ID: <CADnq5_OJbURbVzXVypohp7gCjE+ckHkEnDD67H7KTDJZt_e3HA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: 410353F705
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.172:from];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DX5EC2GV6LWSHXLISCPZADG2GDKGRWLH
X-Message-ID-Hash: DX5EC2GV6LWSHXLISCPZADG2GDKGRWLH
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ramesh Errabolu <Ramesh.Errabolu@amd.com>, amd-gfx@lists.freedesktop.org, sumit.semwal@linaro.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Correct the documentation of name and exp_name symbols
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DX5EC2GV6LWSHXLISCPZADG2GDKGRWLH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgMTo1OOKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBBbSAyMi4xMS4yMyB1bSAxNzowNSBz
Y2hyaWViIFJhbWVzaCBFcnJhYm9sdToNCj4gPiBGaXggdGhlIGRvY3VtZW50YXRpb24gb2Ygc3Ry
dWN0IGRtYV9idWYgbWVtYmVycyBuYW1lIGFuZCBleHBfbmFtZQ0KPiA+IGFzIHRvIGhvdyB0aGVz
ZSBtZW1iZXJzIGFyZSB0byBiZSB1c2VkIGFuZCBhY2Nlc3NlZC4NCj4gPg0KPiA+IFNpZ25lZC1v
ZmYtYnk6IFJhbWVzaCBFcnJhYm9sdSA8UmFtZXNoLkVycmFib2x1QGFtZC5jb20+DQo+DQo+IFJl
dmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoN
ClBsZWFzZSBhcHBseSB0aGlzIHRvIGRybS1taXNjLg0KDQpBbGV4DQoNCj4NCj4gPiAtLS0NCj4g
PiAgIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIHwgMTEgKysrKysrKy0tLS0NCj4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYu
aA0KPiA+IGluZGV4IDNmMzFiYWEzMjkzZi4uOGZmNGFkZDcxZjg4IDEwMDY0NA0KPiA+IC0tLSBh
L2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+ID4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVm
LmgNCj4gPiBAQCAtMzQzLDE2ICszNDMsMTkgQEAgc3RydWN0IGRtYV9idWYgew0KPiA+ICAgICAg
IC8qKg0KPiA+ICAgICAgICAqIEBleHBfbmFtZToNCj4gPiAgICAgICAgKg0KPiA+IC0gICAgICAq
IE5hbWUgb2YgdGhlIGV4cG9ydGVyOyB1c2VmdWwgZm9yIGRlYnVnZ2luZy4gU2VlIHRoZQ0KPiA+
IC0gICAgICAqIERNQV9CVUZfU0VUX05BTUUgSU9DVEwuDQo+ID4gKyAgICAgICogTmFtZSBvZiB0
aGUgZXhwb3J0ZXI7IHVzZWZ1bCBmb3IgZGVidWdnaW5nLiBNdXN0IG5vdCBiZSBOVUxMDQo+ID4g
ICAgICAgICovDQo+ID4gICAgICAgY29uc3QgY2hhciAqZXhwX25hbWU7DQo+ID4NCj4gPiAgICAg
ICAvKioNCj4gPiAgICAgICAgKiBAbmFtZToNCj4gPiAgICAgICAgKg0KPiA+IC0gICAgICAqIFVz
ZXJzcGFjZS1wcm92aWRlZCBuYW1lOyB1c2VmdWwgZm9yIGFjY291bnRpbmcgYW5kIGRlYnVnZ2lu
ZywNCj4gPiAtICAgICAgKiBwcm90ZWN0ZWQgYnkgZG1hX3Jlc3ZfbG9jaygpIG9uIEByZXN2IGFu
ZCBAbmFtZV9sb2NrIGZvciByZWFkIGFjY2Vzcy4NCj4gPiArICAgICAgKiBVc2Vyc3BhY2UtcHJv
dmlkZWQgbmFtZS4gRGVmYXVsdCB2YWx1ZSBpcyBOVUxMLiBJZiBub3QgTlVMTCwNCj4gPiArICAg
ICAgKiBsZW5ndGggY2Fubm90IGJlIGxvbmdlciB0aGFuIERNQV9CVUZfTkFNRV9MRU4sIGluY2x1
ZGluZyBOSUwNCj4gPiArICAgICAgKiBjaGFyLiBVc2VmdWwgZm9yIGFjY291bnRpbmcgYW5kIGRl
YnVnZ2luZy4gUmVhZC9Xcml0ZSBhY2Nlc3Nlcw0KPiA+ICsgICAgICAqIGFyZSBwcm90ZWN0ZWQg
YnkgQG5hbWVfbG9jaw0KPiA+ICsgICAgICAqDQo+ID4gKyAgICAgICogU2VlIHRoZSBJT0NUTHMg
RE1BX0JVRl9TRVRfTkFNRSBvciBETUFfQlVGX1NFVF9OQU1FX0EvQg0KPiA+ICAgICAgICAqLw0K
PiA+ICAgICAgIGNvbnN0IGNoYXIgKm5hbWU7DQo+ID4NCj4NCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnDQo+IFRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
