Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D3C805AF7
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 18:14:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8B5614412F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 Dec 2023 17:14:32 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id BC1C83EF7C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  5 Dec 2023 17:14:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=WDgz2tpo;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.208.43 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-54c5d041c23so5642898a12.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 05 Dec 2023 09:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701796459; x=1702401259; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YRWCEbwpa+lEbKRH93JbcpIUltHp9P4l3x5jAvbRhYU=;
        b=WDgz2tpoIHjV82VlfEcS51cjNlIxrOert+fECQSLg5spJqmMtqMewvWn1YwAAl3IMI
         rHQiEvZqE4ZW4unz+Wgjz+MELWERbtfTnxO39hvv23xs5euqDqZxggzu7ncgie4nESHy
         KFf9sCLWFS45enUS5wy6sB1wskpqT57FRDp2rU9DyrNeR5w2u1VzalryqVle6S3rX1Ej
         UznWjKGWk395zNYcOk1V9mrQnzeueHvbI/JK4O70yFdt8yOTTMHEY27XVv3KhsoszDfs
         W4HnjJ9LogUDSh1jZ7Sc1WEN3apAzoEWY/gxPVtA3ur5rA487v1jETr0iT5yJWZ7WvgP
         ASZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701796459; x=1702401259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YRWCEbwpa+lEbKRH93JbcpIUltHp9P4l3x5jAvbRhYU=;
        b=IqjjoeQfL9Ja6hAfj6m3yfZeXbyT/3MgBFJcBwJ6swKhPvWa3b60mSCuZY4FdEWIXT
         ehtPnC4haXqqYs7o7g2wEu0nNcAFBIR8IsXphh/zOkrdohTyFJN1jHxu02SS3gJv2rBR
         0a3P+x9onr+UD82U6DKwkVjXMKvotzcv9paL+eMYtkXZiPC4eNP3wBD0ToC6sh1UvYXo
         hgD0+e2FUCkGlvJnIhd4Br/D5Kpgc2L1/TAET708F3UyrYxDln6Q3uJZUVu1Mi76Mazd
         ZYZOpDM8GTSfk4ORSk+G7ZNX5PSzpwP517SDYnQA09E9TnEsOiMV9P+1PQaVORsiG1e6
         LRAw==
X-Gm-Message-State: AOJu0YzJYAGlZ7QrSbjSrSh3rQEf2WMB6/j4ia7gHbw1+c41GpVsHu8i
	nECgzLrobIoT80WibBykgGoHO2NfWo0jTAgvbj0=
X-Google-Smtp-Source: AGHT+IHO2bnhMHc7TCbx5rnqpkgXvooRmLWUByXMa0WUN3FxPFT6t/93eaEMC2EdK3+y7PInpH1Btu/MUBEMFX9ncbg=
X-Received: by 2002:a17:906:2091:b0:a1c:5fa9:5320 with SMTP id
 17-20020a170906209100b00a1c5fa95320mr497872ejq.252.1701796459254; Tue, 05 Dec
 2023 09:14:19 -0800 (PST)
MIME-Version: 1.0
References: <20230322224403.35742-1-robdclark@gmail.com> <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
 <CAF6AEGvMwZCLntfYeH3Vg_Z7kYynqdVrinp+pmcbREksK1WGMA@mail.gmail.com>
 <e2fa296b-9b71-a41b-d37d-33f0fac2cd4e@amd.com> <CAF6AEGvdVca_mnZVo9He9oKVfYp84e_kOPWaxX+K5aV4Es9kcQ@mail.gmail.com>
 <CAF6AEGt2D6Ei6OkUK5osz+jWzmkX8tmB1KGi305HaNd=bnQSoA@mail.gmail.com>
 <69d66b9e-5810-4844-a53f-08b7fd8eeccf@amd.com> <CAF6AEGuSexYVL2RF4yVCJptfJgN9vvTgzGWn3CminbsYvctTaw@mail.gmail.com>
 <96665cc5-01ab-4446-af37-e0f456bfe093@amd.com> <CAF6AEGtyUsARUTJb=+LwRQ96665tdcLLBxXH--18FDECuYOP6Q@mail.gmail.com>
In-Reply-To: <CAF6AEGtyUsARUTJb=+LwRQ96665tdcLLBxXH--18FDECuYOP6Q@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Tue, 5 Dec 2023 09:14:07 -0800
Message-ID: <CAF6AEGs5uh1sRDzz7xeDr5xZrXdtg7eoWJhPhRgqhcqAeTX1Jg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Queue-Id: BC1C83EF7C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SGA3TM6VAZGZYHOFCHZITCN36PO4YGUU
X-Message-ID-Hash: SGA3TM6VAZGZYHOFCHZITCN36PO4YGUU
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SGA3TM6VAZGZYHOFCHZITCN36PO4YGUU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBEZWMgNSwgMjAyMyBhdCA4OjU24oCvQU0gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21h
aWwuY29tPiB3cm90ZToNCj4NCj4gT24gVHVlLCBEZWMgNSwgMjAyMyBhdCA3OjU44oCvQU0gQ2hy
aXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4gPg0KPiA+
IEFtIDA1LjEyLjIzIHVtIDE2OjQxIHNjaHJpZWIgUm9iIENsYXJrOg0KPiA+ID4gT24gTW9uLCBE
ZWMgNCwgMjAyMyBhdCAxMDo0NuKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCj4gPiA+IDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPiA+ID4+IEFtIDA0LjEyLjIzIHVtIDIyOjU0IHNj
aHJpZWIgUm9iIENsYXJrOg0KPiA+ID4+PiBPbiBUaHUsIE1hciAyMywgMjAyMyBhdCAyOjMw4oCv
UE0gUm9iIENsYXJrIDxyb2JkY2xhcmtAZ21haWwuY29tPiB3cm90ZToNCj4gPiA+Pj4+IFtTTklQ
XQ0KPiA+ID4+PiBTbywgdGhpcyBwYXRjaCB0dXJucyBvdXQgdG8gYmxvdyB1cCBzcGVjdGFjdWxh
cmx5IHdpdGggZG1hX2ZlbmNlDQo+ID4gPj4+IHJlZmNudCB1bmRlcmZsb3dzIHdoZW4gSSBlbmFi
bGUgRFJJVkVSX1NZTkNPQkpfVElNRUxJTkUgLi4gSSB0aGluaywNCj4gPiA+Pj4gYmVjYXVzZSBp
dCBzdGFydHMgdW53cmFwcGluZyBmZW5jZSBjaGFpbnMsIHBvc3NpYmx5IGluIHBhcmFsbGVsIHdp
dGgNCj4gPiA+Pj4gZmVuY2Ugc2lnbmFsaW5nIG9uIHRoZSByZXRpcmUgcGF0aC4gIElzIGl0IHN1
cHBvc2VkIHRvIGJlIHBlcm1pc3NpYmxlDQo+ID4gPj4+IHRvIHVud3JhcCBhIGZlbmNlIGNoYWlu
IGNvbmN1cnJlbnRseT8NCj4gPiA+PiBUaGUgRE1BLWZlbmNlIGNoYWluIG9iamVjdCBhbmQgaGVs
cGVyIGZ1bmN0aW9ucyB3ZXJlIGRlc2lnbmVkIHNvIHRoYXQNCj4gPiA+PiBjb25jdXJyZW50IGFj
Y2Vzc2VzIHRvIGFsbCBlbGVtZW50cyBhcmUgYWx3YXlzIHBvc3NpYmxlLg0KPiA+ID4+DQo+ID4g
Pj4gU2VlIGRtYV9mZW5jZV9jaGFpbl93YWxrKCkgYW5kIGRtYV9mZW5jZV9jaGFpbl9nZXRfcHJl
digpIGZvciBleGFtcGxlLg0KPiA+ID4+IGRtYV9mZW5jZV9jaGFpbl93YWxrKCkgc3RhcnRzIHdp
dGggYSByZWZlcmVuY2UgdG8gdGhlIGN1cnJlbnQgZmVuY2UgKHRoZQ0KPiA+ID4+IGFuY2hvciBv
ZiB0aGUgd2FsaykgYW5kIHRyaWVzIHRvIGdyYWIgYW4gdXAgdG8gZGF0ZSByZWZlcmVuY2Ugb24g
dGhlDQo+ID4gPj4gcHJldmlvdXMgZmVuY2UgaW4gdGhlIGNoYWluLiBPbmx5IGFmdGVyIHRoYXQg
cmVmZXJlbmNlIGlzIHN1Y2Nlc3NmdWxseQ0KPiA+ID4+IGFjcXVpcmVkIHdlIGRyb3AgdGhlIHJl
ZmVyZW5jZSB0byB0aGUgYW5jaG9yIHdoZXJlIHdlIHN0YXJ0ZWQuDQo+ID4gPj4NCj4gPiA+PiBT
YW1lIGZvciBkbWFfZmVuY2VfYXJyYXlfZmlyc3QoKSwgZG1hX2ZlbmNlX2FycmF5X25leHQoKS4g
SGVyZSB3ZSBob2xkIGENCj4gPiA+PiByZWZlcmVuY2UgdG8gdGhlIGFycmF5IHdoaWNoIGluIHR1
cm4gaG9sZHMgcmVmZXJlbmNlcyB0byBlYWNoIGZlbmNlDQo+ID4gPj4gaW5zaWRlIHRoZSBhcnJh
eSB1bnRpbCBpdCBpcyBkZXN0cm95ZWQgaXRzZWxmLg0KPiA+ID4+DQo+ID4gPj4gV2hlbiB0aGlz
IGJsb3dzIHVwIHdlIGhhdmUgc29tZWhvdyBtaXhlZCB1cCB0aGUgcmVmZXJlbmNlcyBzb21ld2hl
cmUuDQo+ID4gPiBUaGF0J3Mgd2hhdCBpdCBsb29rZWQgbGlrZSB0byBtZSwgYnV0IHdhbnRlZCB0
byBtYWtlIHN1cmUgSSB3YXNuJ3QNCj4gPiA+IG92ZXJsb29raW5nIHNvbWV0aGluZyBzdWJ0bGUu
ICBBbmQgaW4gdGhpcyBjYXNlLCB0aGUgZmVuY2UgYWN0dWFsbHkNCj4gPiA+IHNob3VsZCBiZSB0
aGUgc3luY29iaiB0aW1lbGluZSBwb2ludCBmZW5jZSwgbm90IHRoZSBmZW5jZSBjaGFpbi4NCj4g
PiA+IFZpcnRncHUgaGFzIGVzc2VudGlhbGx5IHRoZSBzYW1lIGxvZ2ljICh0aGVyZSB3ZSByZWFs
bHkgZG8gd2FudCB0bw0KPiA+ID4gdW53cmFwIGZlbmNlcyBzbyB3ZSBjYW4gcGFzcyBob3N0IGZl
bmNlcyBiYWNrIHRvIGhvc3QgcmF0aGVyIHRoYW4NCj4gPiA+IHdhaXRpbmcgaW4gZ3Vlc3QpLCBJ
J20gbm90IHN1cmUgaWYgaXQgd291bGQgYmxvdyB1cCBpbiB0aGUgc2FtZSB3YXkuDQo+ID4NCj4g
PiBXZWxsIGRvIHlvdSBoYXZlIGEgYmFja3RyYWNlIG9mIHdoYXQgZXhhY3RseSBoYXBwZW5zPw0K
PiA+DQo+ID4gTWF5YmUgd2UgaGF2ZSBzb21lIF9wdXQoKSBiZWZvcmUgX2dldCgpIG9yIHNvbWV0
aGluZyBsaWtlIHRoaXMuDQo+DQo+IEkgaGFja2VkIHVwIHNvbWV0aGluZyB0byBzdG9yZSB0aGUg
YmFja3RyYWNlIGluIGRtYV9mZW5jZV9yZWxlYXNlKCkNCj4gKGFuZCBsZWFrIHRoZSBibG9jayBz
byB0aGUgYmFja3RyYWNlIHdvdWxkIHN0aWxsIGJlIGFyb3VuZCBsYXRlciB3aGVuDQo+IGRtYV9m
ZW5jZV9nZXQvcHV0IHdhcyBsYXRlciBjYWxsZWQpIGFuZCBlbmRlZCB1cCB3aXRoOg0KPg0KPiBb
ICAxNTIuODExMzYwXSBmcmVlZCBhdDoNCj4gWyAgMTUyLjgxMzcxOF0gIGRtYV9mZW5jZV9yZWxl
YXNlKzB4MzAvMHgxMzQNCj4gWyAgMTUyLjgxNzg2NV0gIGRtYV9mZW5jZV9wdXQrMHgzOC8weDk4
IFtncHVfc2NoZWRdDQo+IFsgIDE1Mi44MjI2NTddICBkcm1fc2NoZWRfam9iX2FkZF9kZXBlbmRl
bmN5KzB4MTYwLzB4MThjIFtncHVfc2NoZWRdDQo+IFsgIDE1Mi44Mjg5NDhdICBkcm1fc2NoZWRf
am9iX2FkZF9zeW5jb2JqX2RlcGVuZGVuY3krMHg1OC8weDg4IFtncHVfc2NoZWRdDQo+IFsgIDE1
Mi44MzU3NzBdICBtc21faW9jdGxfZ2VtX3N1Ym1pdCsweDU4MC8weDExNjAgW21zbV0NCj4gWyAg
MTUyLjg0MTA3MF0gIGRybV9pb2N0bF9rZXJuZWwrMHhlYy8weDE2Yw0KPiBbICAxNTIuODQ1MTMy
XSAgZHJtX2lvY3RsKzB4MmU4LzB4M2Y0DQo+IFsgIDE1Mi44NDg2NDZdICB2ZnNfaW9jdGwrMHgz
MC8weDUwDQo+IFsgIDE1Mi44NTE5ODJdICBfX2FybTY0X3N5c19pb2N0bCsweDgwLzB4YjQNCj4g
WyAgMTUyLjg1NjAzOV0gIGludm9rZV9zeXNjYWxsKzB4OGMvMHgxMjANCj4gWyAgMTUyLjg1OTkx
OV0gIGVsMF9zdmNfY29tbW9uLmNvbnN0cHJvcC4wKzB4YzAvMHhkYw0KPiBbICAxNTIuODY0Nzc3
XSAgZG9fZWwwX3N2YysweDI0LzB4MzANCj4gWyAgMTUyLjg2ODIwN10gIGVsMF9zdmMrMHg4Yy8w
eGQ4DQo+IFsgIDE1Mi44NzEzNjVdICBlbDB0XzY0X3N5bmNfaGFuZGxlcisweDg0LzB4MTJjDQo+
IFsgIDE1Mi44NzU3NzFdICBlbDB0XzY0X3N5bmMrMHgxOTAvMHgxOTQNCj4NCj4gSSBzdXBwb3Nl
IHRoYXQgZG9lc24ndCBndWFyYW50ZWUgdGhhdCB0aGlzIHdhcyB0aGUgcHJvYmxlbWF0aWMgcHV0
Lg0KPiBCdXQgZHJvcHBpbmcgdGhpcyBwYXRjaCB0byB1bndyYXAgdGhlIGZlbmNlIG1ha2VzIHRo
ZSBwcm9ibGVtIGdvDQo+IGF3YXkuLg0KDQpPaCwgaG1tLCBfYWRkX2RlcGVuZGVuY3koKSBpcyBj
b25zdW1pbmcgdGhlIGZlbmNlIHJlZmVyZW5jZQ0KDQpCUiwNCi1SDQoNCj4gQlIsDQo+IC1SDQo+
DQo+ID4gVGhhbmtzLA0KPiA+IENocmlzdGlhbi4NCj4gPg0KPiA+ID4NCj4gPiA+IEJSLA0KPiA+
ID4gLVINCj4gPiA+DQo+ID4gPj4gUmVnYXJkcywNCj4gPiA+PiBDaHJpc3RpYW4uDQo+ID4gPj4N
Cj4gPiA+Pj4gQlIsDQo+ID4gPj4+IC1SDQo+ID4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
