Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D895EAC0BAE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 May 2025 14:37:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E9767443B4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 22 May 2025 12:37:07 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	by lists.linaro.org (Postfix) with ESMTPS id 4E8193F68D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 12:36:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=lqX0Axlp;
	spf=pass (lists.linaro.org: domain of jens.wiklander@linaro.org designates 209.85.167.181 as permitted sender) smtp.mailfrom=jens.wiklander@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3f8ae3ed8f4so5102860b6e.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 May 2025 05:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747917411; x=1748522211; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E/nM7ohI+OhW9Q09hMJxUkW/sk0nV2AyhKtXe2v8eEc=;
        b=lqX0AxlpaSKFbHFqZnjQ1eppnODl81ko6++/1wAX8eMseI9+6u+ege26xCIxMdivHA
         kBV5NE8Ulh44yWpSMReg96OOiL/muv758WAWnExbUMsUm9DW0LHaIdcPlItMWEkILDhV
         NLB9iGpqFK3TX6dN5uP+/Otp4Wif+IuB5nN5Fc6MyaHUc5KSqUkQnTYgyEsteyVjlmYH
         Xhwn0sAuEtUWbMp/+LpjIYuGZVBKSoVFFSp8Iw0+uEfHpn2iISlgx4msQ8plHufKt7go
         +ZTyUS5smOr19idy6dOQf0xEmHt1hTY2oImbcz6n2CGDWnns9Qrfpr+L1cGNHD5o6KuI
         aaSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747917411; x=1748522211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E/nM7ohI+OhW9Q09hMJxUkW/sk0nV2AyhKtXe2v8eEc=;
        b=J7yoH4+HYg6Ma5Vk8fznE5fvxG5B+lnTvkcSpq4LHDU/kuuf94Ah76dHI4NBm+lP7X
         HUbfH1rNMsTGxweOlIjtPYliXoFgd4mmZxx06Gc3qCMxYYPXnrrSSDANARw27uID2S71
         UEgNKpLk5SGffGyBE6TRpSN7WIRmL1NgxTFsSfk5FyeHNYXCxlgbEvcIoGh6E71iiEck
         gRgxhTYRSay3EnN3eV3yaySurlh5P6Wl3HAwmhM9DUnsykQuEdK6DyUX6hrg6+ejVg/o
         Gmbf1Sc/wL3wxpMChsq/Lw3Q9dYUvcvEbf0NqkTXZdL5JgFcZi8uQD0SnKtXR1BCzd4z
         DE8w==
X-Forwarded-Encrypted: i=1; AJvYcCWDKZU7col3ErT0tjQYg3jdnTtLoysK3vHf2SOrIYV53YtXYZPokm/JoKisJ8R4XdVqXIb7Jb8fd54Uv9It@lists.linaro.org
X-Gm-Message-State: AOJu0YwBVfmAANwhTcM4g+LkR6AODZXP3ldfEDkLBdGt/RNoY3a6TsJm
	667+jLNqpjj0vhZ4mxrzySBWhI+2BhSecRwF9JP6I4HRE0lk+76Gi6Y1We8a8nASTYeHSaXVetD
	v0Z0rasx4RFuEoBamGOa4uBUSJSv1rtBneH+hbN/c6R/o
X-Gm-Gg: ASbGncuB/JfBtC8scf4V4t/2afwE8uyH1izQpjm+5Ukl2kbFLXQveusJt/5g3rRIF0u
	XGH3ROBo64mz2Gtdb44NIxehkYRApE+7Aos2oERA/9OxHVUub/Eotr1R1NyYrFFYOugMHO1topi
	TOY7jaRHhFk683dWgrN+S0AF3MXpNX3V3mbw==
X-Google-Smtp-Source: AGHT+IFaxfBHByqapVV2RXkEPTMYtDPJFaizTF3QtPLs+N+jP8G9GyXQ9nHLQfE3byrCa1MQmfMacM+snhhkwuWXSyE=
X-Received: by 2002:a05:6808:338a:b0:3f6:a9d4:b7e4 with SMTP id
 5614622812f47-404d86f3f18mr17232381b6e.20.1747917411552; Thu, 22 May 2025
 05:36:51 -0700 (PDT)
MIME-Version: 1.0
References: <20250520152436.474778-1-jens.wiklander@linaro.org>
 <20250520152436.474778-3-jens.wiklander@linaro.org> <dffbd709-def0-47af-93ff-a48686f04153@amd.com>
 <CAHUa44Ec0+GPoDkcEG+Vg9_TY1NC=nh3yr0F=ezHMbaeX_A0Bg@mail.gmail.com> <1a65f370-2df2-4169-85f9-c45e7c537447@amd.com>
In-Reply-To: <1a65f370-2df2-4169-85f9-c45e7c537447@amd.com>
From: Jens Wiklander <jens.wiklander@linaro.org>
Date: Thu, 22 May 2025 14:36:39 +0200
X-Gm-Features: AX0GCFtomK6Kj4MbJdPbWNPCFM5pduAepClCBqfPEiiU97RKWiikvixpOO2yK1w
Message-ID: <CAHUa44Hgu9DnmeGXAoFKkRBt6jFCAb6Mi5zzuuvVVSgsxDZQWA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.181:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Queue-Id: 4E8193F68D
X-Spamd-Bar: ------
Message-ID-Hash: M73LRFYDWMP64VGHGNQFIWQLWJO2Q5S4
X-Message-ID-Hash: M73LRFYDWMP64VGHGNQFIWQLWJO2Q5S4
X-MailFrom: jens.wiklander@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M73LRFYDWMP64VGHGNQFIWQLWJO2Q5S4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBNYXkgMjIsIDIwMjUgYXQgMTo1MuKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzIyLzI1IDA4OjU2LCBKZW5z
IFdpa2xhbmRlciB3cm90ZToNCj4gPiBPbiBXZWQsIE1heSAyMSwgMjAyNSBhdCA5OjEz4oCvQU0g
Q2hyaXN0aWFuIEvDtm5pZw0KPiA+IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0K
PiA+Pg0KPiA+PiBPbiA1LzIwLzI1IDE3OjE2LCBKZW5zIFdpa2xhbmRlciB3cm90ZToNCj4gPj4+
IEV4cG9ydCB0aGUgZG1hLWJ1ZiBoZWFwIGZ1bmN0aW9ucyBkZWNsYXJlZCBpbiA8bGludXgvZG1h
LWhlYXAuaD4uDQo+ID4+DQo+ID4+IFRoYXQgaXMgd2hhdCB0aGlzIHBhdGNoIGRvZXMgYW5kIHRo
YXQgc2hvdWxkIGJlIG9idmlvdXMgYnkgbG9va2luZyBhdCBpdC4gWW91IG5lZWQgdG8gZXhwbGFp
biB3aHkgeW91IGRvIHRoaXMuDQo+ID4+DQo+ID4+IExvb2tpbmcgYXQgdGhlIHJlc3Qgb2YgdGhl
IHNlcmllcyBpdCdzIG1vc3QgbGlrZWx5IG9rLCBidXQgdGhpcyBjb21taXQgbWVzc2FnZSBzaG91
bGQgcmVhbGx5IGJlIGltcHJvdmVkLg0KPiA+DQo+ID4gSSdtIGNvbnNpZGVyaW5nIHNvbWV0aGlu
ZyBsaWtlIHRoaXMgZm9yIHRoZSBuZXh0IHZlcnNpb246DQo+ID4gRXhwb3J0IHRoZSBkbWEtYnVm
IGhlYXAgZnVuY3Rpb25zIGRlY2xhcmVkIGluIDxsaW51eC9kbWEtaGVhcC5oPiB0byBhbGxvdw0K
PiA+IHRoZW0gdG8gYmUgdXNlZCBieSBrZXJuZWwgbW9kdWxlcy4gVGhpcyB3aWxsIGVuYWJsZSBk
cml2ZXJzIGxpa2UgdGhlIE9QLVRFRQ0KPiA+IGRyaXZlciwgdG8gdXRpbGl6ZSB0aGVzZSBpbnRl
cmZhY2VzIGZvciByZWdpc3RlcmluZyBhbmQgbWFuYWdpbmcgdGhlaXINCj4gPiBzcGVjaWZpYyBE
TUEgaGVhcHMuDQo+DQo+IFdvcmtzIGZvciBtZSwgYnV0IGl0IGRvZXNuJ3QgbmVlZHMgdG8gYmUg
c28gZGV0YWlsZWQuDQo+DQo+IFNvbWV0aGluZyBsaWtlIHRoaXMgaGVyZSB3b3VsZCBiZSBvcHRp
bWFsIEkgdGhpbms6DQo+DQo+IEV4cG9ydCB0aGUgZG1hLWJ1ZiBoZWFwIGZ1bmN0aW9ucyB0byBh
bGxvdyB0aGVtIHRvIGJlIHVzZWQgYnkgdGhlIE9QLVRFRSBkcml2ZXIuDQo+IFRoZSBPUC1URUUg
ZHJpdmVyIHdhbnRzIHRvIHJlZ2lzdGVyIGFuZCBtYW5hZ2Ugc3BlY2lmaWMgc2VjdXJlIERNQSBo
ZWFwcyB3aXRoIGl0Lg0KDQpHcmVhdCwgSSdsbCB1c2UgdGhhdC4NCg0KVGhhbmtzLA0KSmVucw0K
DQo+DQo+IFJlZ2FyZHMsDQo+IENocmlzdGlhbi4NCj4NCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBK
ZW5zDQo+ID4NCj4gPj4NCj4gPj4gUmVnYXJkcywNCj4gPj4gQ2hyaXN0aWFuLg0KPiA+Pg0KPiA+
Pj4NCj4gPj4+IFNpZ25lZC1vZmYtYnk6IEplbnMgV2lrbGFuZGVyIDxqZW5zLndpa2xhbmRlckBs
aW5hcm8ub3JnPg0KPiA+Pj4gLS0tDQo+ID4+PiAgZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMg
fCAzICsrKw0KPiA+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gPj4+DQo+
ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWhlYXAuYw0KPiA+Pj4gaW5kZXggM2NiZTg3ZDRhNDY0Li5jZGRkZjBlMjRkY2Ug
MTAwNjQ0DQo+ID4+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYw0KPiA+Pj4gKysr
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmMNCj4gPj4+IEBAIC0yMDIsNiArMjAyLDcgQEAg
dm9pZCAqZG1hX2hlYXBfZ2V0X2RydmRhdGEoc3RydWN0IGRtYV9oZWFwICpoZWFwKQ0KPiA+Pj4g
IHsNCj4gPj4+ICAgICAgIHJldHVybiBoZWFwLT5wcml2Ow0KPiA+Pj4gIH0NCj4gPj4+ICtFWFBP
UlRfU1lNQk9MKGRtYV9oZWFwX2dldF9kcnZkYXRhKTsNCj4gPj4+DQo+ID4+PiAgLyoqDQo+ID4+
PiAgICogZG1hX2hlYXBfZ2V0X25hbWUgLSBnZXQgaGVhcCBuYW1lDQo+ID4+PiBAQCAtMjE0LDYg
KzIxNSw3IEBAIGNvbnN0IGNoYXIgKmRtYV9oZWFwX2dldF9uYW1lKHN0cnVjdCBkbWFfaGVhcCAq
aGVhcCkNCj4gPj4+ICB7DQo+ID4+PiAgICAgICByZXR1cm4gaGVhcC0+bmFtZTsNCj4gPj4+ICB9
DQo+ID4+PiArRVhQT1JUX1NZTUJPTChkbWFfaGVhcF9nZXRfbmFtZSk7DQo+ID4+Pg0KPiA+Pj4g
IC8qKg0KPiA+Pj4gICAqIGRtYV9oZWFwX2FkZCAtIGFkZHMgYSBoZWFwIHRvIGRtYWJ1ZiBoZWFw
cw0KPiA+Pj4gQEAgLTMwMyw2ICszMDUsNyBAQCBzdHJ1Y3QgZG1hX2hlYXAgKmRtYV9oZWFwX2Fk
ZChjb25zdCBzdHJ1Y3QgZG1hX2hlYXBfZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPiA+Pj4gICAg
ICAga2ZyZWUoaGVhcCk7DQo+ID4+PiAgICAgICByZXR1cm4gZXJyX3JldDsNCj4gPj4+ICB9DQo+
ID4+PiArRVhQT1JUX1NZTUJPTChkbWFfaGVhcF9hZGQpOw0KPiA+Pj4NCj4gPj4+ICBzdGF0aWMg
Y2hhciAqZG1hX2hlYXBfZGV2bm9kZShjb25zdCBzdHJ1Y3QgZGV2aWNlICpkZXYsIHVtb2RlX3Qg
Km1vZGUpDQo+ID4+PiAgew0KPiA+Pg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
