Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 598EB9D1522
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Nov 2024 17:14:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4824743F47
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Nov 2024 16:14:14 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by lists.linaro.org (Postfix) with ESMTPS id 5FEC43ECD3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2024 16:14:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b="U/DNLwE7";
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.160.171 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-460969c49f2so516591cf.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2024 08:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1731946446; x=1732551246; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KgQtX3b2sNjnE8zCLQLIEHU/IGPvSB2hdJmfWtj8vrk=;
        b=U/DNLwE70Gy9QEF/dcf0hVUKex8TuYSpb95QYG+r1CFLfho30SDV7Mmih0E02jYJGm
         0Ie1zbqhVBw6DyswIDBIik9ANVXpHHJAnTXGWsChDmAZm9zqaJlGX1HkATqIju7g01V3
         FiRIjYHnZZN/Z0bB+3A1cgX/3sNHrJ8f6FCbqFHalyClgCefkL9p22Z4xIT5g63LUzRZ
         8AndRFG/sXEpTmIGzxKmJk2Tv5SX1QTgbcuc1CgIEJ9mQs7sgrX1zXKxPkKna85mk+t0
         tZyoEu+pYiIUlSaDQjMGIrfv1p2vjiwX8K+JwRGGmPxM27auNx2dCt5Wx2GLcEi9CNMX
         3YHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731946446; x=1732551246;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KgQtX3b2sNjnE8zCLQLIEHU/IGPvSB2hdJmfWtj8vrk=;
        b=Pyi8eOZe9JVyUCeAiknSf5UEYUaPRABRVvtgz8w75tAeZ8EvR/IfjMuUndc0/7Fk1H
         epYorJeoqANHerRJk3GRhS8Tc/Zqnh40iC6M/ndTHHtGxKCC9vKfkgQV5v4M/1Zw8Owd
         vbJcPouI7wPmekpbnSiF7P13VraDUwokYDeSbLkp5UbttsUkokA9BGihI5WhNQNfnq4Y
         eJSWGgUWy/5GFlEDxfhrnja9V30fWz3oMg5HuNykjfVvtT1aDDzwQJDPzCXnN9AClK3z
         NYda7q23s6FoLVX327G06k33PDiCTsyfhZcFieAQi0Y0FBiKshIhOP0484VxQqLomW38
         hsOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIxnrt3470MCIwZ5gXSbdNOG9X/iUpkICm98u/C9mpyK9zxqF5cBau4v88FG3W5vsPmDDyM3cLc4yax3Uu@lists.linaro.org
X-Gm-Message-State: AOJu0Yx3Y6wO/4hDAHKj+NMB/DYaXnq/JuapokiAKrSpTRCU4L9TLtj8
	2Sj4+b9503lthlCUSJv1CYgsOBLSMutmP11Ej8d/mauQUmf3HMlPxABCfIVr3FivPxy/3IOE7CR
	uSr+T/V2FJ5UBBq2AOq9y6jDxUInVMnsEjaxl
X-Gm-Gg: ASbGncuURvzJvoxWxyw8dh4lx3NXXz/a61ZUNDqj/dV7j5Ktu6HYRRGhoofs5MPXCIw
	t+3919vdDdQAbqvmZ6XsQDfzmeNDhGw==
X-Google-Smtp-Source: AGHT+IHoE7/aCHotukRoUu4H4VbQ1/F4lGejyuSD3dcDuVxfpACZZ6+M09T7GFjLtVDZR877r1fa0KWxO45WSo9TeDk=
X-Received: by 2002:a05:622a:2988:b0:462:c158:9f5b with SMTP id
 d75a77b69052e-4637156d12fmr5824231cf.19.1731946445606; Mon, 18 Nov 2024
 08:14:05 -0800 (PST)
MIME-Version: 1.0
References: <20241117170326.1971113-1-tjmercier@google.com> <468d41ad-9f89-4a83-8eb1-9bd7efaf1367@ursulin.net>
In-Reply-To: <468d41ad-9f89-4a83-8eb1-9bd7efaf1367@ursulin.net>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Mon, 18 Nov 2024 08:13:54 -0800
Message-ID: <CABdmKX2203KMx5P2x02C=YFCtiR6b5u2JzLS9SbPRh08FzqAKw@mail.gmail.com>
To: Tvrtko Ursulin <tursulin@ursulin.net>
X-Rspamd-Queue-Id: 5FEC43ECD3
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[209.85.160.171:from];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.160.171:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	URIBL_BLOCKED(0.00)[ursulin.net:email,igalia.com:email,mail-qt1-f171.google.com:rdns,mail-qt1-f171.google.com:helo,kernelci.org:url,googlesource.com:url];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 7VZVWZWE6LEYHPZVZ74EDEJJAZDD5YMJ
X-Message-ID-Hash: 7VZVWZWE6LEYHPZVZ74EDEJJAZDD5YMJ
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Fix __dma_buf_debugfs_list_del argument for !CONFIG_DEBUG_FS
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7VZVWZWE6LEYHPZVZ74EDEJJAZDD5YMJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBOb3YgMTgsIDIwMjQgYXQgMToxNeKAr0FNIFR2cnRrbyBVcnN1bGluIDx0dXJzdWxp
bkB1cnN1bGluLm5ldD4gd3JvdGU6DQo+DQo+DQo+IE9uIDE3LzExLzIwMjQgMTc6MDMsIFQuSi4g
TWVyY2llciB3cm90ZToNCj4gPiBUaGUgYXJndW1lbnRzIGZvciBfX2RtYV9idWZfZGVidWdmc19s
aXN0X2RlbCBkbyBub3QgbWF0Y2ggZm9yIGJvdGggdGhlDQo+ID4gQ09ORklHX0RFQlVHX0ZTIGNh
c2UgYW5kIHRoZSAhQ09ORklHX0RFQlVHX0ZTIGNhc2UuIFRoZSAhQ09ORklHX0RFQlVHX0ZTDQo+
ID4gY2FzZSBzaG91bGQgdGFrZSBhIHN0cnVjdCBkbWFfYnVmICosIGJ1dCBpdCdzIGN1cnJlbnRs
eSBzdHJ1Y3QgZmlsZSAqLg0KPiA+IFRoaXMgY2FuIGxlYWQgdG8gdGhlIGJ1aWxkIGVycm9yOg0K
PiA+DQo+ID4gZXJyb3I6IHBhc3NpbmcgYXJndW1lbnQgMSBvZiDigJhfX2RtYV9idWZfZGVidWdm
c19saXN0X2RlbOKAmSBmcm9tDQo+ID4gaW5jb21wYXRpYmxlIHBvaW50ZXIgdHlwZSBbLVdlcnJv
cj1pbmNvbXBhdGlibGUtcG9pbnRlci10eXBlc10NCj4gPg0KPiA+IGRtYS1idWYuYzo2Mzo1Mzog
bm90ZTogZXhwZWN0ZWQg4oCYc3RydWN0IGZpbGUgKuKAmSBidXQgYXJndW1lbnQgaXMgb2YNCj4g
PiB0eXBlIOKAmHN0cnVjdCBkbWFfYnVmICrigJkNCj4gPiAgICAgNjMgfCBzdGF0aWMgdm9pZCBf
X2RtYV9idWZfZGVidWdmc19saXN0X2RlbChzdHJ1Y3QgZmlsZSAqZmlsZSkNCj4gPg0KPiA+IEZp
eGVzOiBiZmM3YmM1MzkzOTIgKCJkbWEtYnVmOiBEbyBub3QgYnVpbGQgZGVidWdmcyByZWxhdGVk
IGNvZGUgd2hlbiAhQ09ORklHX0RFQlVHX0ZTIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBULkouIE1l
cmNpZXIgPHRqbWVyY2llckBnb29nbGUuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYyB8IDIgKy0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+ID4gaW5kZXggODg5MmJjNzAx
YTY2Li5hZmI4YzFjNTAxMDcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gPiBAQCAtNjAsNyAr
NjAsNyBAQCBzdGF0aWMgdm9pZCBfX2RtYV9idWZfZGVidWdmc19saXN0X2FkZChzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmKQ0KPiA+ICAgew0KPiA+ICAgfQ0KPiA+DQo+ID4gLXN0YXRpYyB2b2lkIF9f
ZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3RfZGVsKHN0cnVjdCBmaWxlICpmaWxlKQ0KPiA+ICtzdGF0aWMg
dm9pZCBfX2RtYV9idWZfZGVidWdmc19saXN0X2RlbChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQ0K
PiA+ICAgew0KPiA+ICAgfQ0KPiA+ICAgI2VuZGlmDQo+DQo+IEh1aCBJIHdvbmRlciBob3cgdGhp
cyBzbmVha2VkIGJ5IHVudGlsIG5vdy4uIHRoYW5rcyBmb3IgZml4aW5nIQ0KPg0KPiBSZXZpZXdl
ZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlnYWxpYS5jb20+DQo+DQo+IFJl
Z2FyZHMsDQo+DQo+IFR2cnRrbw0KDQpUaGFua3MgVHZydGtvLiBVcHN0cmVhbSB0aGVyZSBpcyBj
dXJyZW50bHkgb25seSB0aGUgb25lIHVzZSB3aGVyZSBpdCdzDQpjYWxsZWQgd2l0aCBhIHZvaWQg
cG9pbnRlciB3aGljaCBkb2Vzbid0IGdlbmVyYXRlIHRoZSBlcnJvciwgYnV0DQpLZXJuZWxDSSBj
YXVnaHQgdGhlIHByb2JsZW0gb24gYW4gQW5kcm9pZCBicmFuY2ggd2hlcmUgaXQncyBhbHNvDQpj
YWxsZWQgd2l0aCBhIGRtYV9idWYgcG9pbnRlcjoNCg0KaHR0cHM6Ly9kYXNoYm9hcmQua2VybmVs
Y2kub3JnL3RyZWUvNWE0YzkzZTJmNzk0MDAxYTVlZmExM2MwZGVjOTMxMjM1MjQwZDM4NC9idWls
ZC9tYWVzdHJvOjY3MzdlNjBkMWE0OGU3ODIxOTMwMzQ1ZD90YWJsZUZpbHRlcj0lN0IlMjJidWls
ZHNUYWJsZSUyMiUzQSUyMmludmFsaWQlMjIlMkMlMjJib290c1RhYmxlJTIyJTNBJTIyYWxsJTIy
JTJDJTIydGVzdHNUYWJsZSUyMiUzQSUyMmFsbCUyMiU3RCZvcmlnaW49bWFlc3RybyZjdXJyZW50
UGFnZVRhYj10cmVlRGV0YWlscy5idWlsZHMmZGlmZkZpbHRlcj0lN0IlN0QmdHJlZUluZm89JTdC
JTIyZ2l0QnJhbmNoJTIyJTNBJTIyYW5kcm9pZDE2LTYuMTIlMjIlMkMlMjJnaXRVcmwlMjIlM0El
MjJodHRwcyUzQSUyRiUyRmFuZHJvaWQuZ29vZ2xlc291cmNlLmNvbSUyRmtlcm5lbCUyRmNvbW1v
biUyMiUyQyUyMnRyZWVOYW1lJTIyJTNBJTIyYW5kcm9pZCUyMiUyQyUyMmNvbW1pdE5hbWUlMjIl
M0ElMjJBU0ItMjAyNC0xMS0wNV8xNi02LjEyLTM3MC1nNWE0YzkzZTJmNzk0MCUyMiUyQyUyMmhl
YWRDb21taXRIYXNoJTIyJTNBJTIyNWE0YzkzZTJmNzk0MDAxYTVlZmExM2MwZGVjOTMxMjM1MjQw
ZDM4NCUyMiU3RCZpbnRlcnZhbEluRGF5cz03DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
