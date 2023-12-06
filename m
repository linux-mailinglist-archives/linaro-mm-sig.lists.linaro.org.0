Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED31806A4C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Dec 2023 10:05:01 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3FF2943E2B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  6 Dec 2023 09:05:00 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id 8F1833EF0D
	for <linaro-mm-sig@lists.linaro.org>; Wed,  6 Dec 2023 09:04:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=ZuSyUprd;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.52 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-33348e711e0so485469f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 06 Dec 2023 01:04:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701853490; x=1702458290; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WOtnnMKriIqWynhK5sWA4VrWdmrI0YzrWSrmJwB2ukc=;
        b=ZuSyUprdKkMRsiKD84U5qG6PphBjWIC+LJlsyq3ly7UxppKSpxM/m1qp+vwhkkqovS
         a8f39DIRcIrXi8kDBO9DQyyZAOUzVcPjkfu1kXWYaQOacOXWjItSgeMh5BX1go6R5eCg
         s25mUOt0PqotN/2nAitiEAYzYq4HzFV9/oVHrj5wK/ifY7ZfR/RMq7bYDw4vMJaeLG4O
         irGskkghdqnZBvRaaWyUEfkRSavAS8hnFfPfewqcG8uNjzqSpWLxFqqau+uat2lLdHZx
         JqjqSD+5tQdD1u+IYRS5yt10G8Nz8RUJHGjB8m4lblc7aKpA1t4l17SKVwoqVNKtSJHA
         KBHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701853490; x=1702458290;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WOtnnMKriIqWynhK5sWA4VrWdmrI0YzrWSrmJwB2ukc=;
        b=QC9WT2JyIVglISQNoYAbfk81VwUYBK4JiG+QpxcDslcE82IloW6UUjJwdZmEBSYBlq
         mI4goGiYAM6wKfObwsmfEty6jAQxV5SOyyXj7fuk0CJmkD1vPyrelStQGT3U/Y/sYF27
         kQR4felSaKC629hfv9qHlf4duWpNamC+8Ghl+MR5a7AKmABb5VIdUoGzDASotrefqcGp
         R+yyyVYJSrJj4/kpthLq9TVSr5M7yFSKZu0KJg5OiNkdMrLcXg/XUv51crzHSy9Biq8d
         G5/WILCY4sKYjUSDAd/D8E+EWp1YU0Jr+tLgoxmA0yzDsL/lHRjTFfXYqBrYjMa+qVNn
         aAxQ==
X-Gm-Message-State: AOJu0YwV5xSB7PrlK8E8vsmqJb0FEZ/ryNG/CokFVBs7glw56YblOY/S
	1Y9uj3fe/U10fu0ZJUmtwsQ=
X-Google-Smtp-Source: AGHT+IEwxvTnU6iUQdCapyDpGUJnMcE+k8C0c8hfETB3YNpX9m9/dT8VslAdBQ47KTMOpcXp6ClMoQ==
X-Received: by 2002:a5d:448a:0:b0:332:d4a6:1143 with SMTP id j10-20020a5d448a000000b00332d4a61143mr284784wrq.7.1701853490199;
        Wed, 06 Dec 2023 01:04:50 -0800 (PST)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id l13-20020adffe8d000000b0033342978c93sm8880999wrr.30.2023.12.06.01.04.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 01:04:49 -0800 (PST)
Message-ID: <1d336117-a94f-4b79-bc71-be9c24a0246a@gmail.com>
Date: Wed, 6 Dec 2023 10:04:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
References: <20230322224403.35742-1-robdclark@gmail.com>
 <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
 <CAF6AEGvMwZCLntfYeH3Vg_Z7kYynqdVrinp+pmcbREksK1WGMA@mail.gmail.com>
 <e2fa296b-9b71-a41b-d37d-33f0fac2cd4e@amd.com>
 <CAF6AEGvdVca_mnZVo9He9oKVfYp84e_kOPWaxX+K5aV4Es9kcQ@mail.gmail.com>
 <CAF6AEGt2D6Ei6OkUK5osz+jWzmkX8tmB1KGi305HaNd=bnQSoA@mail.gmail.com>
 <69d66b9e-5810-4844-a53f-08b7fd8eeccf@amd.com>
 <CAF6AEGuSexYVL2RF4yVCJptfJgN9vvTgzGWn3CminbsYvctTaw@mail.gmail.com>
 <96665cc5-01ab-4446-af37-e0f456bfe093@amd.com>
 <CAF6AEGtyUsARUTJb=+LwRQ96665tdcLLBxXH--18FDECuYOP6Q@mail.gmail.com>
 <CAF6AEGs5uh1sRDzz7xeDr5xZrXdtg7eoWJhPhRgqhcqAeTX1Jg@mail.gmail.com>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <CAF6AEGs5uh1sRDzz7xeDr5xZrXdtg7eoWJhPhRgqhcqAeTX1Jg@mail.gmail.com>
X-Rspamd-Queue-Id: 8F1833EF0D
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.99 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,amd.com];
	TAGGED_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.52:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: FOQCSJOGOEBFZTLJY6H2OTA2HSKOIP6Y
X-Message-ID-Hash: FOQCSJOGOEBFZTLJY6H2OTA2HSKOIP6Y
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FOQCSJOGOEBFZTLJY6H2OTA2HSKOIP6Y/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCkFtIDA1LjEyLjIzIHVtIDE4OjE0IHNjaHJpZWIgUm9iIENsYXJrOg0KPiBPbiBUdWUsIERl
YyA1LCAyMDIzIGF0IDg6NTbigK9BTSBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+IHdy
b3RlOg0KPj4gT24gVHVlLCBEZWMgNSwgMjAyMyBhdCA3OjU44oCvQU0gQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4+PiBBbSAwNS4xMi4yMyB1bSAx
Njo0MSBzY2hyaWViIFJvYiBDbGFyazoNCj4+Pj4gT24gTW9uLCBEZWMgNCwgMjAyMyBhdCAxMDo0
NuKAr1BNIENocmlzdGlhbiBLw7ZuaWcNCj4+Pj4gPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4g
d3JvdGU6DQo+Pj4+PiBBbSAwNC4xMi4yMyB1bSAyMjo1NCBzY2hyaWViIFJvYiBDbGFyazoNCj4+
Pj4+PiBPbiBUaHUsIE1hciAyMywgMjAyMyBhdCAyOjMw4oCvUE0gUm9iIENsYXJrIDxyb2JkY2xh
cmtAZ21haWwuY29tPiB3cm90ZToNCj4+Pj4+Pj4gW1NOSVBdDQo+Pj4+Pj4gU28sIHRoaXMgcGF0
Y2ggdHVybnMgb3V0IHRvIGJsb3cgdXAgc3BlY3RhY3VsYXJseSB3aXRoIGRtYV9mZW5jZQ0KPj4+
Pj4+IHJlZmNudCB1bmRlcmZsb3dzIHdoZW4gSSBlbmFibGUgRFJJVkVSX1NZTkNPQkpfVElNRUxJ
TkUgLi4gSSB0aGluaywNCj4+Pj4+PiBiZWNhdXNlIGl0IHN0YXJ0cyB1bndyYXBwaW5nIGZlbmNl
IGNoYWlucywgcG9zc2libHkgaW4gcGFyYWxsZWwgd2l0aA0KPj4+Pj4+IGZlbmNlIHNpZ25hbGlu
ZyBvbiB0aGUgcmV0aXJlIHBhdGguICBJcyBpdCBzdXBwb3NlZCB0byBiZSBwZXJtaXNzaWJsZQ0K
Pj4+Pj4+IHRvIHVud3JhcCBhIGZlbmNlIGNoYWluIGNvbmN1cnJlbnRseT8NCj4+Pj4+IFRoZSBE
TUEtZmVuY2UgY2hhaW4gb2JqZWN0IGFuZCBoZWxwZXIgZnVuY3Rpb25zIHdlcmUgZGVzaWduZWQg
c28gdGhhdA0KPj4+Pj4gY29uY3VycmVudCBhY2Nlc3NlcyB0byBhbGwgZWxlbWVudHMgYXJlIGFs
d2F5cyBwb3NzaWJsZS4NCj4+Pj4+DQo+Pj4+PiBTZWUgZG1hX2ZlbmNlX2NoYWluX3dhbGsoKSBh
bmQgZG1hX2ZlbmNlX2NoYWluX2dldF9wcmV2KCkgZm9yIGV4YW1wbGUuDQo+Pj4+PiBkbWFfZmVu
Y2VfY2hhaW5fd2FsaygpIHN0YXJ0cyB3aXRoIGEgcmVmZXJlbmNlIHRvIHRoZSBjdXJyZW50IGZl
bmNlICh0aGUNCj4+Pj4+IGFuY2hvciBvZiB0aGUgd2FsaykgYW5kIHRyaWVzIHRvIGdyYWIgYW4g
dXAgdG8gZGF0ZSByZWZlcmVuY2Ugb24gdGhlDQo+Pj4+PiBwcmV2aW91cyBmZW5jZSBpbiB0aGUg
Y2hhaW4uIE9ubHkgYWZ0ZXIgdGhhdCByZWZlcmVuY2UgaXMgc3VjY2Vzc2Z1bGx5DQo+Pj4+PiBh
Y3F1aXJlZCB3ZSBkcm9wIHRoZSByZWZlcmVuY2UgdG8gdGhlIGFuY2hvciB3aGVyZSB3ZSBzdGFy
dGVkLg0KPj4+Pj4NCj4+Pj4+IFNhbWUgZm9yIGRtYV9mZW5jZV9hcnJheV9maXJzdCgpLCBkbWFf
ZmVuY2VfYXJyYXlfbmV4dCgpLiBIZXJlIHdlIGhvbGQgYQ0KPj4+Pj4gcmVmZXJlbmNlIHRvIHRo
ZSBhcnJheSB3aGljaCBpbiB0dXJuIGhvbGRzIHJlZmVyZW5jZXMgdG8gZWFjaCBmZW5jZQ0KPj4+
Pj4gaW5zaWRlIHRoZSBhcnJheSB1bnRpbCBpdCBpcyBkZXN0cm95ZWQgaXRzZWxmLg0KPj4+Pj4N
Cj4+Pj4+IFdoZW4gdGhpcyBibG93cyB1cCB3ZSBoYXZlIHNvbWVob3cgbWl4ZWQgdXAgdGhlIHJl
ZmVyZW5jZXMgc29tZXdoZXJlLg0KPj4+PiBUaGF0J3Mgd2hhdCBpdCBsb29rZWQgbGlrZSB0byBt
ZSwgYnV0IHdhbnRlZCB0byBtYWtlIHN1cmUgSSB3YXNuJ3QNCj4+Pj4gb3Zlcmxvb2tpbmcgc29t
ZXRoaW5nIHN1YnRsZS4gIEFuZCBpbiB0aGlzIGNhc2UsIHRoZSBmZW5jZSBhY3R1YWxseQ0KPj4+
PiBzaG91bGQgYmUgdGhlIHN5bmNvYmogdGltZWxpbmUgcG9pbnQgZmVuY2UsIG5vdCB0aGUgZmVu
Y2UgY2hhaW4uDQo+Pj4+IFZpcnRncHUgaGFzIGVzc2VudGlhbGx5IHRoZSBzYW1lIGxvZ2ljICh0
aGVyZSB3ZSByZWFsbHkgZG8gd2FudCB0bw0KPj4+PiB1bndyYXAgZmVuY2VzIHNvIHdlIGNhbiBw
YXNzIGhvc3QgZmVuY2VzIGJhY2sgdG8gaG9zdCByYXRoZXIgdGhhbg0KPj4+PiB3YWl0aW5nIGlu
IGd1ZXN0KSwgSSdtIG5vdCBzdXJlIGlmIGl0IHdvdWxkIGJsb3cgdXAgaW4gdGhlIHNhbWUgd2F5
Lg0KPj4+IFdlbGwgZG8geW91IGhhdmUgYSBiYWNrdHJhY2Ugb2Ygd2hhdCBleGFjdGx5IGhhcHBl
bnM/DQo+Pj4NCj4+PiBNYXliZSB3ZSBoYXZlIHNvbWUgX3B1dCgpIGJlZm9yZSBfZ2V0KCkgb3Ig
c29tZXRoaW5nIGxpa2UgdGhpcy4NCj4+IEkgaGFja2VkIHVwIHNvbWV0aGluZyB0byBzdG9yZSB0
aGUgYmFja3RyYWNlIGluIGRtYV9mZW5jZV9yZWxlYXNlKCkNCj4+IChhbmQgbGVhayB0aGUgYmxv
Y2sgc28gdGhlIGJhY2t0cmFjZSB3b3VsZCBzdGlsbCBiZSBhcm91bmQgbGF0ZXIgd2hlbg0KPj4g
ZG1hX2ZlbmNlX2dldC9wdXQgd2FzIGxhdGVyIGNhbGxlZCkgYW5kIGVuZGVkIHVwIHdpdGg6DQo+
Pg0KPj4gWyAgMTUyLjgxMTM2MF0gZnJlZWQgYXQ6DQo+PiBbICAxNTIuODEzNzE4XSAgZG1hX2Zl
bmNlX3JlbGVhc2UrMHgzMC8weDEzNA0KPj4gWyAgMTUyLjgxNzg2NV0gIGRtYV9mZW5jZV9wdXQr
MHgzOC8weDk4IFtncHVfc2NoZWRdDQo+PiBbICAxNTIuODIyNjU3XSAgZHJtX3NjaGVkX2pvYl9h
ZGRfZGVwZW5kZW5jeSsweDE2MC8weDE4YyBbZ3B1X3NjaGVkXQ0KPj4gWyAgMTUyLjgyODk0OF0g
IGRybV9zY2hlZF9qb2JfYWRkX3N5bmNvYmpfZGVwZW5kZW5jeSsweDU4LzB4ODggW2dwdV9zY2hl
ZF0NCj4+IFsgIDE1Mi44MzU3NzBdICBtc21faW9jdGxfZ2VtX3N1Ym1pdCsweDU4MC8weDExNjAg
W21zbV0NCj4+IFsgIDE1Mi44NDEwNzBdICBkcm1faW9jdGxfa2VybmVsKzB4ZWMvMHgxNmMNCj4+
IFsgIDE1Mi44NDUxMzJdICBkcm1faW9jdGwrMHgyZTgvMHgzZjQNCj4+IFsgIDE1Mi44NDg2NDZd
ICB2ZnNfaW9jdGwrMHgzMC8weDUwDQo+PiBbICAxNTIuODUxOTgyXSAgX19hcm02NF9zeXNfaW9j
dGwrMHg4MC8weGI0DQo+PiBbICAxNTIuODU2MDM5XSAgaW52b2tlX3N5c2NhbGwrMHg4Yy8weDEy
MA0KPj4gWyAgMTUyLjg1OTkxOV0gIGVsMF9zdmNfY29tbW9uLmNvbnN0cHJvcC4wKzB4YzAvMHhk
Yw0KPj4gWyAgMTUyLjg2NDc3N10gIGRvX2VsMF9zdmMrMHgyNC8weDMwDQo+PiBbICAxNTIuODY4
MjA3XSAgZWwwX3N2YysweDhjLzB4ZDgNCj4+IFsgIDE1Mi44NzEzNjVdICBlbDB0XzY0X3N5bmNf
aGFuZGxlcisweDg0LzB4MTJjDQo+PiBbICAxNTIuODc1NzcxXSAgZWwwdF82NF9zeW5jKzB4MTkw
LzB4MTk0DQo+Pg0KPj4gSSBzdXBwb3NlIHRoYXQgZG9lc24ndCBndWFyYW50ZWUgdGhhdCB0aGlz
IHdhcyB0aGUgcHJvYmxlbWF0aWMgcHV0Lg0KPj4gQnV0IGRyb3BwaW5nIHRoaXMgcGF0Y2ggdG8g
dW53cmFwIHRoZSBmZW5jZSBtYWtlcyB0aGUgcHJvYmxlbSBnbw0KPj4gYXdheS4uDQo+IE9oLCBo
bW0sIF9hZGRfZGVwZW5kZW5jeSgpIGlzIGNvbnN1bWluZyB0aGUgZmVuY2UgcmVmZXJlbmNlDQoN
ClllYWgsIEkgd2FzIGp1c3QgYWJvdXQgdG8gcG9pbnQgdGhhdCBvdXQgYXMgd2VsbCA6KQ0KDQpT
aG91bGQgYmUgdHJpdmlhbCB0byBmaXgsDQpDaHJpc3RpYW4NCg0KPg0KPiBCUiwNCj4gLVINCj4N
Cj4+IEJSLA0KPj4gLVINCj4+DQo+Pj4gVGhhbmtzLA0KPj4+IENocmlzdGlhbi4NCj4+Pg0KPj4+
PiBCUiwNCj4+Pj4gLVINCj4+Pj4NCj4+Pj4+IFJlZ2FyZHMsDQo+Pj4+PiBDaHJpc3RpYW4uDQo+
Pj4+Pg0KPj4+Pj4+IEJSLA0KPj4+Pj4+IC1SDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IExpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZw0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZw0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
