Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 36434A88248
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 15:32:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5584B454D7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Apr 2025 13:32:40 +0000 (UTC)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	by lists.linaro.org (Postfix) with ESMTPS id F17D5454D5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 13:32:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Z9fsULRt;
	spf=pass (lists.linaro.org: domain of alexdeucher@gmail.com designates 209.85.222.54 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-86d39be8c77so259657241.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Apr 2025 06:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744637544; x=1745242344; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cLbWjqIEu3IvN7/Kn44+Q64WEI5oH2m78Com7pvnOMU=;
        b=Z9fsULRtbfPZ4zghnZiI0AcmWkR3vXJLFlI5+OYY2ciqSaWPMAa1lMt3NzQCDX+4k5
         SVp0Be83HAlc1369HF4NphnCtJcWCp1h1vEg2qqU1P4uMquW6aXIZYmer9pE8sVgr/If
         1Sv2PMXEHYfn1t3GDfvZxX07j4e45+FpCJxvldWFBM55r/W0rOL+kfLXM3Tl4y9Jz8S+
         Nqq1qaFPD/bH5Iv8E/ZytRfi4HYyddoVU8vocoKbKn1gmVXKGrJvCyDPPP213rABy0k2
         paSh+kV0E/u15hofdJFh8f0cLatzujvGozl86pntrXRO8nvWwCyhbQckGK5c9LuXJr0+
         RYHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744637544; x=1745242344;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cLbWjqIEu3IvN7/Kn44+Q64WEI5oH2m78Com7pvnOMU=;
        b=CZRJVfZeFGUvkb67bGpjJfVvLLdC63gMlUpsuc/XEbbsOsWmrBaHwniSRsTx5/L4RN
         kou7gYfaSa10G7bZmIAQKyouc+QZnAs/gVWdjX+fNb1hlbRXch0qoqtkRnn7T73+zk9P
         t4giaA5BakFvaYeC83mnwCZeNCkVVqnPFhd65Eo2u1iGuDw4jD5kj9Rgea4KcE/bY0Az
         3oq57QDf9cZZkid7j44AcLeMNen6lkL811nI7dH0vlomN2YEBV3HBhjl26kzw1nfCEJH
         FYCfXcVc+9QekfAZU8w1odOIhP5Xm8JuDMkItkfcknsJEbfsdrT98vo/JG3YZqsD+Mm/
         DSMg==
X-Forwarded-Encrypted: i=1; AJvYcCUqPQPuGSsLBWkwn6By2uExKSnh5pA4VJIL/vELU1Obznj74dHjLfEr1jvcFSZQywj64EHcJBTgZgcGZlsT@lists.linaro.org
X-Gm-Message-State: AOJu0Yyo5CXEDBpX0fHPwtl9PyngNQwLRSOWUzFptXXY5+PM3IYweUMi
	zxdR3fxwBNsnU9PmBArVg3lZTVwBYJGP0sL9yYY3l60n+ZSM8tYD4Iij9/e1mRthJTHvvUv1Fnu
	IYieyCXP+ToUi8CTlRxNmoX54vm8=
X-Gm-Gg: ASbGncvEFJpQuxOzoYtwWzgtNJgfOSnWr1W3tkbhI+CR6hZlYRX2n+EXwGlWn3hhZ4L
	Dj76yuEeWvY/8zVtSZ+o92vW3oSYTWgnGqhRWlW9qVhRmszDGzCmj9uS03zqhTuuBSdh1mPmYcc
	R71Oae0l/TzyMSwZIA0wUaTw==
X-Google-Smtp-Source: AGHT+IF7IOfl7G3RHuUMkW9G3NUZ1c6AeYBhcFA/0srYwHNBMQNbCBke1d4i0DzNdtUmmahoewD0PR3r989Z7nXMJeg=
X-Received: by 2002:a05:6102:1526:b0:4c1:7646:714b with SMTP id
 ada2fe7eead31-4c9e509f68dmr2714727137.8.1744637544260; Mon, 14 Apr 2025
 06:32:24 -0700 (PDT)
MIME-Version: 1.0
References: <20250414132610.677644-1-sashal@kernel.org> <20250414132610.677644-15-sashal@kernel.org>
In-Reply-To: <20250414132610.677644-15-sashal@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 14 Apr 2025 09:32:12 -0400
X-Gm-Features: ATxdqUHJqYR9htHgMYIluI0e4GkanXvhCUfhX9nDEKqwCQY5PEKlQtBXD_SK1DY
Message-ID: <CADnq5_MFOtBZ0_UtRbZ2fRGzgdr5+2ZkNwY-Ot_V2qo1wUPaYw@mail.gmail.com>
To: Sasha Levin <sashal@kernel.org>
X-Rspamd-Queue-Id: F17D5454D5
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,ffwll.ch,gmail.com,linaro.org,intel.com,igalia.com,lists.freedesktop.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	DNSWL_BLOCKED(0.00)[209.85.222.54:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.54:from];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.222.54:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2TUZD3VIGB2RL54TSWLGI6LKO6D36CVZ
X-Message-ID-Hash: 2TUZD3VIGB2RL54TSWLGI6LKO6D36CVZ
X-MailFrom: alexdeucher@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, stable@vger.kernel.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Simona Vetter <simona.vetter@ffwll.ch>, Felix Kuehling <felix.kuehling@amd.com>, Pak Nin Lui <pak.lui@amd.com>, Alex Deucher <alexander.deucher@amd.com>, simona@ffwll.ch, sumit.semwal@linaro.org, Yunxiang.Li@amd.com, matthew.auld@intel.com, tvrtko.ursulin@igalia.com, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH AUTOSEL 6.14 15/34] drm/amdgpu: allow pinning DMA-bufs into VRAM if all importers can do P2P
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2TUZD3VIGB2RL54TSWLGI6LKO6D36CVZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBBcHIgMTQsIDIwMjUgYXQgOToyNuKAr0FNIFNhc2hhIExldmluIDxzYXNoYWxAa2Vy
bmVsLm9yZz4gd3JvdGU6DQo+DQo+IEZyb206IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4NCj4gWyBVcHN0cmVhbSBjb21taXQgZjVlN2ZhYmQxZjVjNjViMmUw
NzdlZmNkYjExOGNmYTY3ZWFlNzMxMSBdDQo+DQo+IFRyeSBwaW5uaW5nIGludG8gVlJBTSB0byBh
bGxvdyBQMlAgd2l0aCBSRE1BIE5JQ3Mgd2l0aG91dCBPRFANCj4gc3VwcG9ydCBpZiBhbGwgYXR0
YWNobWVudHMgY2FuIGRvIFAyUC4gSWYgYW55IGF0dGFjaG1lbnQgY2FuJ3QgZG8NCj4gUDJQIGp1
c3QgcGluIGludG8gR1RUIGluc3RlYWQuDQo+DQo+IEFja2VkLWJ5OiBTaW1vbmEgVmV0dGVyIDxz
aW1vbmEudmV0dGVyQGZmd2xsLmNoPg0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEZlbGl4IEt1ZWhs
aW5nIDxmZWxpeC5rdWVobGluZ0BhbWQuY29tPg0KPiBSZXZpZXdlZC1ieTogRmVsaXggS3VlaGxp
bmcgPGZlbGl4Lmt1ZWhsaW5nQGFtZC5jb20+DQo+IFRlc3RlZC1ieTogUGFrIE5pbiBMdWkgPHBh
ay5sdWlAYW1kLmNvbT4NCj4gQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYS52ZXR0ZXJAZmZ3bGwu
Y2g+DQo+IFNpZ25lZC1vZmYtYnk6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1k
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPg0K
DQpUaGlzIHNob3VsZCBub3QgZ28gdG8gc3RhYmxlLiAgSXQgZGVwZW5kcyBvbiBkbWVtIGNncm91
cHMuDQoNCkFsZXgNCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9kbWFfYnVmLmMgfCAyNSArKysrKysrKysrKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxOCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMNCj4gaW5kZXggOWY2MjdjYWVkYzNmNi4uZWU0
N2YyMzljOGMxMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2RtYV9idWYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZG1hX2J1Zi5jDQo+IEBAIC03NSwxMSArNzUsMjUgQEAgc3RhdGljIGludCBhbWRncHVfZG1hX2J1
Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwNCj4gICAqLw0KPiAgc3RhdGljIGludCBh
bWRncHVfZG1hX2J1Zl9waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQ0KPiAg
ew0KPiAtICAgICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gYXR0YWNoLT5kbWFidWYt
PnByaXY7DQo+IC0gICAgICAgc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2Jv
KG9iaik7DQo+ICsgICAgICAgc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiA9IGF0dGFjaC0+ZG1hYnVm
Ow0KPiArICAgICAgIHN0cnVjdCBhbWRncHVfYm8gKmJvID0gZ2VtX3RvX2FtZGdwdV9ibyhkbWFi
dWYtPnByaXYpOw0KPiArICAgICAgIHUzMiBkb21haW5zID0gYm8tPnByZWZlcnJlZF9kb21haW5z
Ow0KPg0KPiAtICAgICAgIC8qIHBpbiBidWZmZXIgaW50byBHVFQgKi8NCj4gLSAgICAgICByZXR1
cm4gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dFTV9ET01BSU5fR1RUKTsNCj4gKyAgICAgICBk
bWFfcmVzdl9hc3NlcnRfaGVsZChkbWFidWYtPnJlc3YpOw0KPiArDQo+ICsgICAgICAgLyoNCj4g
KyAgICAgICAgKiBUcnkgcGlubmluZyBpbnRvIFZSQU0gdG8gYWxsb3cgUDJQIHdpdGggUkRNQSBO
SUNzIHdpdGhvdXQgT0RQDQo+ICsgICAgICAgICogc3VwcG9ydCBpZiBhbGwgYXR0YWNobWVudHMg
Y2FuIGRvIFAyUC4gSWYgYW55IGF0dGFjaG1lbnQgY2FuJ3QgZG8NCj4gKyAgICAgICAgKiBQMlAg
anVzdCBwaW4gaW50byBHVFQgaW5zdGVhZC4NCj4gKyAgICAgICAgKi8NCj4gKyAgICAgICBsaXN0
X2Zvcl9lYWNoX2VudHJ5KGF0dGFjaCwgJmRtYWJ1Zi0+YXR0YWNobWVudHMsIG5vZGUpDQo+ICsg
ICAgICAgICAgICAgICBpZiAoIWF0dGFjaC0+cGVlcjJwZWVyKQ0KPiArICAgICAgICAgICAgICAg
ICAgICAgICBkb21haW5zICY9IH5BTURHUFVfR0VNX0RPTUFJTl9WUkFNOw0KPiArDQo+ICsgICAg
ICAgaWYgKGRvbWFpbnMgJiBBTURHUFVfR0VNX0RPTUFJTl9WUkFNKQ0KPiArICAgICAgICAgICAg
ICAgYm8tPmZsYWdzIHw9IEFNREdQVV9HRU1fQ1JFQVRFX0NQVV9BQ0NFU1NfUkVRVUlSRUQ7DQo+
ICsNCj4gKyAgICAgICByZXR1cm4gYW1kZ3B1X2JvX3BpbihibywgZG9tYWlucyk7DQo+ICB9DQo+
DQo+ICAvKioNCj4gQEAgLTEzNCw5ICsxNDgsNiBAQCBzdGF0aWMgc3RydWN0IHNnX3RhYmxlICph
bWRncHVfZG1hX2J1Zl9tYXAoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPiAg
ICAgICAgICAgICAgICAgciA9IHR0bV9ib192YWxpZGF0ZSgmYm8tPnRibywgJmJvLT5wbGFjZW1l
bnQsICZjdHgpOw0KPiAgICAgICAgICAgICAgICAgaWYgKHIpDQo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIHJldHVybiBFUlJfUFRSKHIpOw0KPiAtDQo+IC0gICAgICAgfSBlbHNlIGlmIChiby0+
dGJvLnJlc291cmNlLT5tZW1fdHlwZSAhPSBUVE1fUExfVFQpIHsNCj4gLSAgICAgICAgICAgICAg
IHJldHVybiBFUlJfUFRSKC1FQlVTWSk7DQo+ICAgICAgICAgfQ0KPg0KPiAgICAgICAgIHN3aXRj
aCAoYm8tPnRiby5yZXNvdXJjZS0+bWVtX3R5cGUpIHsNCj4gLS0NCj4gMi4zOS41DQo+DQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
