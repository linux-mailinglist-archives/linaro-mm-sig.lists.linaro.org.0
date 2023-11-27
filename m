Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 220357FA0F9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Nov 2023 14:24:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC38440B8E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Nov 2023 13:24:35 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 2E4463EF0D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Nov 2023 13:24:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=WGlsQMCh;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4083dbc43cfso29242135e9.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Nov 2023 05:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701091464; x=1701696264; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FH0s3pNKOJxZQ6z+iEoKI4AAtRx5ZhF+IIxrjC4hS7Y=;
        b=WGlsQMChunfKLDlNGt9/wjDvgOB448I34UbIsnUfA09iXYv4U61K5PNOIOI3S04mlC
         J8NZx0y0eQbB4+2u9oBf3ShqKh+pULBW7ezKBMrfbk43bB89w0anuqXubUVXMl8UMAA0
         /wfYZIqokKArSIKgLj02EM+HGLLbWvtLuO5nMKwyoJbcaQ5/sWuXuD62S4+IBGXIzWEN
         Zr4fJNKjLjzJeERg+RvjeD9+AwnSavnom2KVAPCCgZPUcatP5w7ZjqwcGHLcm0hVea6Q
         o5yCM8f72LR3c1ek2++mOFazdAHaZwTbW3hyo5GAaAcIFtMJC7aJ7DHrt7V9beb7/fUr
         EVZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701091464; x=1701696264;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FH0s3pNKOJxZQ6z+iEoKI4AAtRx5ZhF+IIxrjC4hS7Y=;
        b=NIbjZW+PhArpO5HAK5JpjmAmBDIMWH4Tk9+8pZRWgG/qNbv6LXkSJDyu4WScwoL1+H
         d2Q4UmO2G8b1l9SpdGiJ5ij2QBSksod46IGIn7aa7jv22cpb9wt3dr7Bfd9BqYU2IXhz
         pY0grpYMrVzNFfHO8xKlI/DhTwx+bmd6a32ySCEEUQ6mUE5nARNewktVsWEL+XAs1dU6
         5lEkdSGimQA1ePe8c3er9Gz07v5zVgHZAy+mRN8bHutmrZA4WX9EAsmqPachXMw+pke3
         RsOe5MdPcftujCItZIu4FTkDeS9cqqQAZmxdvnhyCMt6ARVujny6zfDwk43Xh0PVX7Ia
         Yixg==
X-Gm-Message-State: AOJu0YzDhIa1uQpCAxD6RjFwWp0BAqfG8htYgDJSMYo3SZERfBPeybqM
	a7eiH64V1kw6IupmwZcVqmM=
X-Google-Smtp-Source: AGHT+IEkgZi6dHQenViMLORQ+BGP+Cu5JcNbxI8Ky4tY3ox+8USr6NjXaEho/GBtYPZe71+Kc5fs3g==
X-Received: by 2002:a05:600c:3106:b0:40b:3df2:c5f8 with SMTP id g6-20020a05600c310600b0040b3df2c5f8mr5896949wmo.36.1701091463940;
        Mon, 27 Nov 2023 05:24:23 -0800 (PST)
Received: from [10.254.108.81] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id e25-20020a5d5959000000b00332eb96cb73sm8652933wri.73.2023.11.27.05.24.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 05:24:19 -0800 (PST)
Message-ID: <e35e67dd-fd96-4ac5-a6ba-f351f12a146c@gmail.com>
Date: Mon, 27 Nov 2023 14:24:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
To: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Alex Deucher <Alexander.Deucher@amd.com>
References: <20231115093035.1889-1-christian.koenig@amd.com>
In-Reply-To: <20231115093035.1889-1-christian.koenig@amd.com>
X-Rspamd-Queue-Id: 2E4463EF0D
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SXS3N3WOIU3HABLTZQ3AJB5XLB5D43JH
X-Message-ID-Hash: SXS3N3WOIU3HABLTZQ3AJB5XLB5D43JH
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix check in dma_resv_add_fence
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SXS3N3WOIU3HABLTZQ3AJB5XLB5D43JH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

UGluZz8gQ2FuIEkgZ2V0IGFuIHJiIG9yIGFja2VkLWJ5IGZvciB0aGF0Pw0KDQpUaGFua3MsDQpD
aHJpc3RpYW4uDQoNCkFtIDE1LjExLjIzIHVtIDEwOjMwIHNjaHJpZWIgQ2hyaXN0aWFuIEvDtm5p
ZzoNCj4gSXQncyB2YWxpZCB0byBhZGQgdGhlIHNhbWUgZmVuY2UgbXVsdGlwbGUgdGltZXMgdG8g
YSBkbWEtcmVzdiBvYmplY3QgYW5kDQo+IHdlIHNob3VsZG4ndCBuZWVkIG9uZSBleHRyYSBzbG90
IGZvciBlYWNoLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+DQo+IEZpeGVzOiBhM2Y3YzEwYTI2OWQ1ICgiZG1hLWJ1Zi9kbWEt
cmVzdjogY2hlY2sgaWYgdGhlIG5ldyBmZW5jZSBpcyByZWFsbHkgbGF0ZXIiKQ0KPiBDYzogc3Rh
YmxlQHZnZXIua2VybmVsLm9yZyAjIHY1LjE5Kw0KPiAtLS0NCj4gICBkcml2ZXJzL2RtYS1idWYv
ZG1hLXJlc3YuYyB8ICAyICstDQo+ICAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaCAgfCAxNSAr
KysrKysrKysrKysrKysNCj4gICAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4gaW5kZXggMzhiNDExMDM3OGRlLi5lYjhi
NzMzMDY1YjIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+ICsr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+IEBAIC0zMDEsNyArMzAxLDcgQEAgdm9p
ZCBkbWFfcmVzdl9hZGRfZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlLA0KPiAgIA0KPiAgIAkJZG1hX3Jlc3ZfbGlzdF9lbnRyeShmb2JqLCBpLCBvYmos
ICZvbGQsICZvbGRfdXNhZ2UpOw0KPiAgIAkJaWYgKChvbGQtPmNvbnRleHQgPT0gZmVuY2UtPmNv
bnRleHQgJiYgb2xkX3VzYWdlID49IHVzYWdlICYmDQo+IC0JCSAgICAgZG1hX2ZlbmNlX2lzX2xh
dGVyKGZlbmNlLCBvbGQpKSB8fA0KPiArCQkgICAgIGRtYV9mZW5jZV9pc19sYXRlcl9vcl9zYW1l
KGZlbmNlLCBvbGQpKSB8fA0KPiAgIAkJICAgIGRtYV9mZW5jZV9pc19zaWduYWxlZChvbGQpKSB7
DQo+ICAgCQkJZG1hX3Jlc3ZfbGlzdF9zZXQoZm9iaiwgaSwgZmVuY2UsIHVzYWdlKTsNCj4gICAJ
CQlkbWFfZmVuY2VfcHV0KG9sZCk7DQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1m
ZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiBpbmRleCBlYmU3OGJkM2QxMjEu
LmIzNzcyZWRjYTJlNiAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0K
PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+IEBAIC00OTgsNiArNDk4LDIxIEBA
IHN0YXRpYyBpbmxpbmUgYm9vbCBkbWFfZmVuY2VfaXNfbGF0ZXIoc3RydWN0IGRtYV9mZW5jZSAq
ZjEsDQo+ICAgCXJldHVybiBfX2RtYV9mZW5jZV9pc19sYXRlcihmMS0+c2Vxbm8sIGYyLT5zZXFu
bywgZjEtPm9wcyk7DQo+ICAgfQ0KPiAgIA0KPiArLyoqDQo+ICsgKiBkbWFfZmVuY2VfaXNfbGF0
ZXJfb3Jfc2FtZSAtIHJldHVybiB0cnVlIGlmIGYxIGlzIGxhdGVyIG9yIHNhbWUgYXMgZjINCj4g
KyAqIEBmMTogdGhlIGZpcnN0IGZlbmNlIGZyb20gdGhlIHNhbWUgY29udGV4dA0KPiArICogQGYy
OiB0aGUgc2Vjb25kIGZlbmNlIGZyb20gdGhlIHNhbWUgY29udGV4dA0KPiArICoNCj4gKyAqIFJl
dHVybnMgdHJ1ZSBpZiBmMSBpcyBjaHJvbm9sb2dpY2FsbHkgbGF0ZXIgdGhhbiBmMiBvciB0aGUg
c2FtZSBmZW5jZS4gQm90aA0KPiArICogZmVuY2VzIG11c3QgYmUgZnJvbSB0aGUgc2FtZSBjb250
ZXh0LCBzaW5jZSBhIHNlcW5vIGlzIG5vdCByZS11c2VkIGFjcm9zcw0KPiArICogY29udGV4dHMu
DQo+ICsgKi8NCj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBkbWFfZmVuY2VfaXNfbGF0ZXJfb3Jfc2Ft
ZShzdHJ1Y3QgZG1hX2ZlbmNlICpmMSwNCj4gKwkJCQkJICAgICAgc3RydWN0IGRtYV9mZW5jZSAq
ZjIpDQo+ICt7DQo+ICsJcmV0dXJuIGYxID09IGYyIHx8IGRtYV9mZW5jZV9pc19sYXRlcihmMSwg
ZjIpOw0KPiArfQ0KPiArDQo+ICAgLyoqDQo+ICAgICogZG1hX2ZlbmNlX2xhdGVyIC0gcmV0dXJu
IHRoZSBjaHJvbm9sb2dpY2FsbHkgbGF0ZXIgZmVuY2UNCj4gICAgKiBAZjE6CXRoZSBmaXJzdCBm
ZW5jZSBmcm9tIHRoZSBzYW1lIGNvbnRleHQNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
