Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D271DAA9542
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 16:15:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE70E463E2
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 14:15:58 +0000 (UTC)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	by lists.linaro.org (Postfix) with ESMTPS id 14D1244AFA
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 14:15:44 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=UtT6L+PD;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.166.53 as permitted sender) smtp.mailfrom=robdclark@gmail.com
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-85db3475637so177163439f.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 05 May 2025 07:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746454543; x=1747059343; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DmFv/eGqP8BUD+cO2vw/j1sQpK2CcTzLRBctQj23AcA=;
        b=UtT6L+PD3OKlN6EjNj/airqkY4HZcg8+NY/4Z+iJYGwmNjckinbFbiHyVSQAzquet2
         8LeoMQVn43Gg1Wx8o5TBodgZjcr9sqTE2UigXzuQq9SSrtDvWMHd6m61F6aC/3cylu5j
         fzOma+GI7OgKLDqV9JxPLG1aoAGI0HQR1/A8WpOZj4LWiT4Ryn+E9R4LInrtpwqJb2I6
         uuKIaiQxAewfzoHTa9pm6/SN8M5MUYynYSC9whqhMVbvfg8cEsPDxyfWtqxUDSYzgFrN
         B57oqLv/3A9jw1VMwb9KNzqKQeBK+lsMMU7Js29S9PMTLIuOTNHkTyjaY8tv8+qr4SwZ
         EIRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746454543; x=1747059343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DmFv/eGqP8BUD+cO2vw/j1sQpK2CcTzLRBctQj23AcA=;
        b=TSvVxRPk1PU6vEL5c6mv/FsasXqF3k8mlyovEHKNYsyVY4EI2j3A3MMP791ilRt7PS
         IoIaIYUvnktMz8IXreUJAa+5RUVtoPyRXmosi6pOYunjm7OJp0Ods1gYDk9Frj8dKnHg
         2Jgo+vzThJcOcNhZyF4pG+rHDKKD/PlPT2e1NOhlcVRWPxohmjhBSOGQYPEd5gUWWBax
         kTGDUszWX+OmMeswAdHTm4At4a5jrCkdkL5SD/QGvFMj9F3lyzKqR7Wl5os0c85DZkEz
         FlZdmjwemBHiYYH/Ee0Bq6sMrRQz89TOyNEKoD6kVP0JQnqWw1ZjNhIO5GarHKdQGop+
         MHTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkIjAgDd2Kozi7yqIgfSJGsOKkn/zRcFLRJ0sWgPRn1OmyQLqWrwf35L5H6dmq6V+nCNltBcCWgRWEn5LK@lists.linaro.org
X-Gm-Message-State: AOJu0YxrWCGH+INGzhKWb+bcEiGjL/n2d0uC7+GKgjzDtWYw5+bhcwzZ
	KCLh0jfJzYP4GL+vGQDLMlvHjr5vk999dsAsIryUUit5QK69Kk9z8VYjvmQ7YfAGNddeM2g5xyk
	ZPxZzz1kn+zGL0uYLNrqnrWgZ7qFWgQ==
X-Gm-Gg: ASbGnctwbLe7/Kci6hk1wSyQYbJURchXLAGiv9jpkirwmOV5f2unyd78UlcJ1CJRQrY
	YvbvUjgGRchfSpKrM1ghckrWwOz0LsqpJnFoARwrmrWuMqdwBVKXwDXbHjeTGIIVRhZ1/QZy1ui
	ruHbw/LbXZOK0K838UsKuAPZh/4Jwss3uxUcn2WlpwhHAQOpv3k5cd
X-Google-Smtp-Source: AGHT+IFqHcvzGD+XM74JPejK+dbntF5020jCymJ7lyVu5UGKNSp+Ot20Fw3HKkPY3VchZDwZUCgEVCgtr4nWezOVrRA=
X-Received: by 2002:a05:6e02:156c:b0:3d9:43fe:8e34 with SMTP id
 e9e14a558f8ab-3d97ad891bamr126880165ab.1.1746454543182; Mon, 05 May 2025
 07:15:43 -0700 (PDT)
MIME-Version: 1.0
References: <20250502165831.44850-1-robdclark@gmail.com> <20250502165831.44850-22-robdclark@gmail.com>
 <3a4297fd-4554-4727-ab05-feaddaf63ea5@amd.com>
In-Reply-To: <3a4297fd-4554-4727-ab05-feaddaf63ea5@amd.com>
From: Rob Clark <robdclark@gmail.com>
Date: Mon, 5 May 2025 07:15:31 -0700
X-Gm-Features: ATxdqUEENrcJUZ0hEKbuQkuJkiW3wko3qimL5agF-KRqx4_9Igop8VKUWG8b1zM
Message-ID: <CAF6AEGtmjLM-tK9Y=gT5XupW62X_eY2fiBJCYUnKqO9A9C4xFg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 14D1244AFA
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,chromium.org,quicinc.com,kernel.org,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,linaro.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	DNSWL_BLOCKED(0.00)[209.85.166.53:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.166.53:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: 6SKKKZX6UIUN3DWTKNP3DGY4PYDYP6NV
X-Message-ID-Hash: 6SKKKZX6UIUN3DWTKNP3DGY4PYDYP6NV
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, Connor Abbott <cwabbott0@gmail.com>, Rob Clark <robdclark@chromium.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Simona Vetter <simona@ffwll.ch>, Konrad Dybcio <konradybcio@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 21/33] drm/msm: Add _NO_SHARE flag
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6SKKKZX6UIUN3DWTKNP3DGY4PYDYP6NV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXkgNSwgMjAyNSBhdCAxMjo1NOKAr0FNIENocmlzdGlhbiBLw7ZuaWcNCjxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOg0KPg0KPiBPbiA1LzIvMjUgMTg6NTYsIFJvYiBD
bGFyayB3cm90ZToNCj4gPiBGcm9tOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+
DQo+ID4NCj4gPiBCdWZmZXJzIHRoYXQgYXJlIG5vdCBzaGFyZWQgYmV0d2VlbiBjb250ZXh0cyBj
YW4gc2hhcmUgYSBzaW5nbGUgcmVzdg0KPiA+IG9iamVjdC4gIFRoaXMgd2F5IGRybV9ncHV2bSB3
aWxsIG5vdCB0cmFjayB0aGVtIGFzIGV4dGVybmFsIG9iamVjdHMsIGFuZA0KPiA+IHN1Ym1pdC10
aW1lIHZhbGlkYXRpbmcgb3ZlcmhlYWQgd2lsbCBiZSBPKDEpIGZvciBhbGwgTiBub24tc2hhcmVk
IEJPcywNCj4gPiBpbnN0ZWFkIG9mIE8obikuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2Ig
Q2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9tc20vbXNtX2Rydi5oICAgICAgIHwgIDEgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9nZW0uYyAgICAgICB8IDIzICsrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2dlbV9wcmltZS5jIHwgMTUgKysrKysrKysrKysrKysrDQo+ID4g
IGluY2x1ZGUvdWFwaS9kcm0vbXNtX2RybS5oICAgICAgICAgIHwgMTQgKysrKysrKysrKysrKysN
Cj4gPiAgNCBmaWxlcyBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vbXNt
L21zbV9kcnYuaA0KPiA+IGluZGV4IGI3N2ZkMmM1MzFjMy4uYjBhZGQyMzZjYmIzIDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5oDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL21zbS9tc21fZHJ2LmgNCj4gPiBAQCAtMjQ2LDYgKzI0Niw3IEBAIGludCBtc21f
Z2VtX3ByaW1lX3ZtYXAoc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBpb3N5c19t
YXAgKm1hcCk7DQo+ID4gIHZvaWQgbXNtX2dlbV9wcmltZV92dW5tYXAoc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmosIHN0cnVjdCBpb3N5c19tYXAgKm1hcCk7DQo+ID4gIHN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqbXNtX2dlbV9wcmltZV9pbXBvcnRfc2dfdGFibGUoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwNCj4gPiAgICAgICAgICAgICAgIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFj
aCwgc3RydWN0IHNnX3RhYmxlICpzZyk7DQo+ID4gK3N0cnVjdCBkbWFfYnVmICptc21fZ2VtX3By
aW1lX2V4cG9ydChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgaW50IGZsYWdzKTsNCj4gPiAg
aW50IG1zbV9nZW1fcHJpbWVfcGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKTsNCj4gPiAg
dm9pZCBtc21fZ2VtX3ByaW1lX3VucGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKTsNCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2dlbS5jDQo+ID4gaW5kZXggMzcwOGQ0NTc5MjAzLi5kMGY0NGM5
ODEzNTEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtLmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW0uYw0KPiA+IEBAIC01MzIsNiArNTMy
LDkgQEAgc3RhdGljIGludCBnZXRfYW5kX3Bpbl9pb3ZhX3JhbmdlX2xvY2tlZChzdHJ1Y3QgZHJt
X2dlbV9vYmplY3QgKm9iaiwNCj4gPg0KPiA+ICAgICAgIG1zbV9nZW1fYXNzZXJ0X2xvY2tlZChv
YmopOw0KPiA+DQo+ID4gKyAgICAgaWYgKHRvX21zbV9ibyhvYmopLT5mbGFncyAmIE1TTV9CT19O
T19TSEFSRSkNCj4gPiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPiA+ICsNCj4gPiAg
ICAgICB2bWEgPSBnZXRfdm1hX2xvY2tlZChvYmosIHZtLCByYW5nZV9zdGFydCwgcmFuZ2VfZW5k
KTsNCj4gPiAgICAgICBpZiAoSVNfRVJSKHZtYSkpDQo+ID4gICAgICAgICAgICAgICByZXR1cm4g
UFRSX0VSUih2bWEpOw0KPiA+IEBAIC0xMDYwLDYgKzEwNjMsMTYgQEAgc3RhdGljIHZvaWQgbXNt
X2dlbV9mcmVlX29iamVjdChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4gPiAgICAgICAg
ICAgICAgIHB1dF9wYWdlcyhvYmopOw0KPiA+ICAgICAgIH0NCj4gPg0KPiA+ICsgICAgIGlmICht
c21fb2JqLT5mbGFncyAmIE1TTV9CT19OT19TSEFSRSkgew0KPiA+ICsgICAgICAgICAgICAgc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpyX29iaiA9DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNv
bnRhaW5lcl9vZihvYmotPnJlc3YsIHN0cnVjdCBkcm1fZ2VtX29iamVjdCwgX3Jlc3YpOw0KPiA+
ICsNCj4gPiArICAgICAgICAgICAgIEJVR19PTihvYmotPnJlc3YgPT0gJm9iai0+X3Jlc3YpOw0K
PiA+ICsNCj4gPiArICAgICAgICAgICAgIC8qIERyb3AgcmVmZXJlbmNlIHdlIGhvbGQgdG8gc2hh
cmVkIHJlc3Ygb2JqOiAqLw0KPiA+ICsgICAgICAgICAgICAgZHJtX2dlbV9vYmplY3RfcHV0KHJf
b2JqKTsNCj4gPiArICAgICB9DQo+ID4gKw0KPiA+ICAgICAgIGRybV9nZW1fb2JqZWN0X3JlbGVh
c2Uob2JqKTsNCj4gPg0KPiA+ICAgICAgIGtmcmVlKG1zbV9vYmotPm1ldGFkYXRhKTsNCj4gPiBA
QCAtMTA5Miw2ICsxMTA1LDE1IEBAIGludCBtc21fZ2VtX25ld19oYW5kbGUoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwgc3RydWN0IGRybV9maWxlICpmaWxlLA0KPiA+ICAgICAgIGlmIChuYW1lKQ0K
PiA+ICAgICAgICAgICAgICAgbXNtX2dlbV9vYmplY3Rfc2V0X25hbWUob2JqLCAiJXMiLCBuYW1l
KTsNCj4gPg0KPiA+ICsgICAgIGlmIChmbGFncyAmIE1TTV9CT19OT19TSEFSRSkgew0KPiA+ICsg
ICAgICAgICAgICAgc3RydWN0IG1zbV9jb250ZXh0ICpjdHggPSBmaWxlLT5kcml2ZXJfcHJpdjsN
Cj4gPiArICAgICAgICAgICAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqcl9vYmogPSBkcm1fZ3B1
dm1fcmVzdl9vYmooY3R4LT52bSk7DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgZHJtX2dlbV9v
YmplY3RfZ2V0KHJfb2JqKTsNCj4gPiArDQo+ID4gKyAgICAgICAgICAgICBvYmotPnJlc3YgPSBy
X29iai0+cmVzdjsNCj4gPiArICAgICB9DQo+ID4gKw0KPiA+ICAgICAgIHJldCA9IGRybV9nZW1f
aGFuZGxlX2NyZWF0ZShmaWxlLCBvYmosIGhhbmRsZSk7DQo+ID4NCj4gPiAgICAgICAvKiBkcm9w
IHJlZmVyZW5jZSBmcm9tIGFsbG9jYXRlIC0gaGFuZGxlIGhvbGRzIGl0IG5vdyAqLw0KPiA+IEBA
IC0xMTI0LDYgKzExNDYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9nZW1fb2JqZWN0X2Z1
bmNzIG1zbV9nZW1fb2JqZWN0X2Z1bmNzID0gew0KPiA+ICAgICAgIC5mcmVlID0gbXNtX2dlbV9m
cmVlX29iamVjdCwNCj4gPiAgICAgICAub3BlbiA9IG1zbV9nZW1fb3BlbiwNCj4gPiAgICAgICAu
Y2xvc2UgPSBtc21fZ2VtX2Nsb3NlLA0KPiA+ICsgICAgIC5leHBvcnQgPSBtc21fZ2VtX3ByaW1l
X2V4cG9ydCwNCj4gPiAgICAgICAucGluID0gbXNtX2dlbV9wcmltZV9waW4sDQo+ID4gICAgICAg
LnVucGluID0gbXNtX2dlbV9wcmltZV91bnBpbiwNCj4gPiAgICAgICAuZ2V0X3NnX3RhYmxlID0g
bXNtX2dlbV9wcmltZV9nZXRfc2dfdGFibGUsDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9tc20vbXNtX2dlbV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21fZ2VtX3By
aW1lLmMNCj4gPiBpbmRleCBlZTI2NzQ5MGM5MzUuLjFhNmQ4MDk5MTk2YSAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1fcHJpbWUuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2dlbV9wcmltZS5jDQo+ID4gQEAgLTE2LDYgKzE2LDkgQEAgc3Ry
dWN0IHNnX3RhYmxlICptc21fZ2VtX3ByaW1lX2dldF9zZ190YWJsZShzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iaikNCj4gPiAgICAgICBzdHJ1Y3QgbXNtX2dlbV9vYmplY3QgKm1zbV9vYmogPSB0
b19tc21fYm8ob2JqKTsNCj4gPiAgICAgICBpbnQgbnBhZ2VzID0gb2JqLT5zaXplID4+IFBBR0Vf
U0hJRlQ7DQo+ID4NCj4gPiArICAgICBpZiAobXNtX29iai0+ZmxhZ3MgJiBNU01fQk9fTk9fU0hB
UkUpDQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsNCj4gPiArDQo+
ID4gICAgICAgaWYgKFdBUk5fT04oIW1zbV9vYmotPnBhZ2VzKSkgIC8qIHNob3VsZCBoYXZlIGFs
cmVhZHkgcGlubmVkISAqLw0KPiA+ICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT01F
TSk7DQo+ID4NCj4gPiBAQCAtNDUsNiArNDgsMTUgQEAgc3RydWN0IGRybV9nZW1fb2JqZWN0ICpt
c21fZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KPiA+
ICAgICAgIHJldHVybiBtc21fZ2VtX2ltcG9ydChkZXYsIGF0dGFjaC0+ZG1hYnVmLCBzZyk7DQo+
ID4gIH0NCj4gPg0KPiA+ICsNCj4gPiArc3RydWN0IGRtYV9idWYgKm1zbV9nZW1fcHJpbWVfZXhw
b3J0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBpbnQgZmxhZ3MpDQo+ID4gK3sNCj4gPiAr
ICAgICBpZiAodG9fbXNtX2JvKG9iaiktPmZsYWdzICYgTVNNX0JPX05PX1NIQVJFKQ0KPiA+ICsg
ICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVQRVJNKTsNCj4gPiArDQo+ID4gKyAgICAgcmV0
dXJuIGRybV9nZW1fcHJpbWVfZXhwb3J0KG9iaiwgZmxhZ3MpOw0KPiA+ICt9DQo+ID4gKw0KPiA+
ICBpbnQgbXNtX2dlbV9wcmltZV9waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopDQo+ID4g
IHsNCj4gPiAgICAgICBzdHJ1Y3QgcGFnZSAqKnBhZ2VzOw0KPiA+IEBAIC01Myw2ICs2NSw5IEBA
IGludCBtc21fZ2VtX3ByaW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4gPiAg
ICAgICBpZiAob2JqLT5pbXBvcnRfYXR0YWNoKQ0KPiA+ICAgICAgICAgICAgICAgcmV0dXJuIDA7
DQo+ID4NCj4gPiArICAgICBpZiAodG9fbXNtX2JvKG9iaiktPmZsYWdzICYgTVNNX0JPX05PX1NI
QVJFKQ0KPiA+ICsgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7DQo+ID4gKw0KPiA+ICAgICAg
IHBhZ2VzID0gbXNtX2dlbV9waW5fcGFnZXNfbG9ja2VkKG9iaik7DQo+ID4gICAgICAgaWYgKElT
X0VSUihwYWdlcykpDQo+ID4gICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKHBhZ2VzKTsNCj4g
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9tc21fZHJtLmggYi9pbmNsdWRlL3VhcGkv
ZHJtL21zbV9kcm0uaA0KPiA+IGluZGV4IGI5NzRmNWEyNGRiYy4uMWJjY2MzNDc5NDVjIDEwMDY0
NA0KPiA+IC0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vbXNtX2RybS5oDQo+ID4gKysrIGIvaW5jbHVk
ZS91YXBpL2RybS9tc21fZHJtLmgNCj4gPiBAQCAtMTQwLDYgKzE0MCwxOSBAQCBzdHJ1Y3QgZHJt
X21zbV9wYXJhbSB7DQo+ID4NCj4gPiAgI2RlZmluZSBNU01fQk9fU0NBTk9VVCAgICAgICAweDAw
MDAwMDAxICAgICAvKiBzY2Fub3V0IGNhcGFibGUgKi8NCj4gPiAgI2RlZmluZSBNU01fQk9fR1BV
X1JFQURPTkxZICAweDAwMDAwMDAyDQo+ID4gKy8qIFByaXZhdGUgYnVmZmVycyBkbyBub3QgbmVl
ZCB0byBiZSBleHBsaWNpdGx5IGxpc3RlZCBpbiB0aGUgU1VCTUlUDQo+ID4gKyAqIGlvY3RsLCB1
bmxlc3MgcmVmZXJlbmNlZCBieSBhIGRybV9tc21fZ2VtX3N1Ym1pdF9jbWQuICBQcml2YXRlDQo+
ID4gKyAqIGJ1ZmZlcnMgbWF5IE5PVCBiZSBpbXBvcnRlZC9leHBvcnRlZCBvciB1c2VkIGZvciBz
Y2Fub3V0IChvciBhbnkNCj4gPiArICogb3RoZXIgc2l0dWF0aW9uIHdoZXJlIGJ1ZmZlcnMgY2Fu
IGJlIGluZGVmaW5pdGVseSBwaW5uZWQsIGJ1dA0KPiA+ICsgKiBjYXNlcyBvdGhlciB0aGFuIHNj
YW5vdXQgYXJlIGFsbCBrZXJuZWwgb3duZWQgQk9zIHdoaWNoIGFyZSBub3QNCj4gPiArICogdmlz
aWJsZSB0byB1c2Vyc3BhY2UpLg0KPg0KPiBXaHkgaXMgcGlubmluZyBmb3Igc2Nhbm91dCBhIHBy
b2JsZW0gd2l0aCB0aG9zZT8NCj4NCj4gTWF5YmUgSSBtaXNzZWQgc29tZXRoaW5nIGJ1dCBmb3Ig
b3RoZXIgZHJpdmVycyB0aGF0IGRvZXNuJ3Qgc2VlbSB0byBiZSBhIHByb2JsZW0uDQoNCkkgZ3Vl
c3MgX3RlY2huaWNhbGx5XyBpdCBjb3VsZCBiZSBvayBiZWNhdXNlIHdlIHRyYWNrIHBpbi1jb3Vu
dA0Kc2VwYXJhdGVseSBmcm9tIGRtYV9yZXN2LiAgQnV0IHRoZSBtb3RpdmF0aW9uIGZvciB0aGF0
IHN0YXRlbWVudCB3YXMNCnNpbXBseSB0aGF0IF9OT19TSEFSRSBidWZmZXJzIHNoYXJlIGEgcmVz
diBvYmogd2l0aCB0aGUgVk0sIHNvIHRoZXkNCnNob3VsZCBub3QgYmUgdXNlZCBpbiBhIGRpZmZl
cmVudCBWTSAoaW4gdGhpcyBjYXNlLCB0aGUgZGlzcGxheSwgd2hpY2gNCmhhcyBpdCdzIG93biBW
TSkuDQoNCkJSLA0KLVINCg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+DQo+ID4gKyAq
DQo+ID4gKyAqIEluIGV4Y2hhbmdlIGZvciB0aG9zZSBjb25zdHJhaW50cywgYWxsIHByaXZhdGUg
Qk9zIGFzc29jaWF0ZWQgd2l0aA0KPiA+ICsgKiBhIHNpbmdsZSBjb250ZXh0IChkcm1fZmlsZSkg
c2hhcmUgYSBzaW5nbGUgZG1hX3Jlc3YsIGFuZCBpZiB0aGVyZQ0KPiA+ICsgKiBoYXMgYmVlbiBu
byBldmljdGlvbiBzaW5jZSB0aGUgbGFzdCBzdWJtaXQsIHRoZXJlIGFyZSBubyBwZXItQk8NCj4g
PiArICogYm9va2VlcGluZyB0byBkbywgc2lnbmlmaWNhbnRseSBjdXR0aW5nIHRoZSBTVUJNSVQg
b3ZlcmhlYWQuDQo+ID4gKyAqLw0KPiA+ICsjZGVmaW5lIE1TTV9CT19OT19TSEFSRSAgICAgIDB4
MDAwMDAwMDQNCj4gPiAgI2RlZmluZSBNU01fQk9fQ0FDSEVfTUFTSyAgICAweDAwMGYwMDAwDQo+
ID4gIC8qIGNhY2hlIG1vZGVzICovDQo+ID4gICNkZWZpbmUgTVNNX0JPX0NBQ0hFRCAgICAgICAg
MHgwMDAxMDAwMA0KPiA+IEBAIC0xNDksNiArMTYyLDcgQEAgc3RydWN0IGRybV9tc21fcGFyYW0g
ew0KPiA+DQo+ID4gICNkZWZpbmUgTVNNX0JPX0ZMQUdTICAgICAgICAgKE1TTV9CT19TQ0FOT1VU
IHwgXA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBNU01fQk9fR1BVX1JFQURP
TkxZIHwgXA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBNU01fQk9fTk9fU0hB
UkUgfCBcDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE1TTV9CT19DQUNIRV9N
QVNLKQ0KPiA+DQo+ID4gIHN0cnVjdCBkcm1fbXNtX2dlbV9uZXcgew0KPg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
