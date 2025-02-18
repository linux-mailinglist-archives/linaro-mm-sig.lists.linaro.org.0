Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C20FA39E63
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 15:13:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16E8645248
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Feb 2025 14:12:59 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 556A54460A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 14:12:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=QQ3UeM8V;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.128.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-438a39e659cso38106095e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Feb 2025 06:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739887974; x=1740492774; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tzYgRVcywhBYtuTTzJDErGjkC05GXKYOTab/tFE7SCE=;
        b=QQ3UeM8VsNLp06NiFRBeyXKWXsAVq9d/hmJQsFvfdADPWgFQ6dNzvG2KIBfwlOxDFn
         wI6eP2xJlcsyCdL3GB14Mugcr0yaBqyC4XZ75ked8KtSVF3LWLHfgf7HJ+OeC9Cbjfn+
         yff0n2zG+dgcE6y0fkE83V7UbVi4e76hoWboxyc09zGP4cpx12VdDHtbkR+l1dn5v11m
         Ugu0YaQQm5b6kD+oUE7rb87KRRYDEqctUQO4ZFpsaliABtJcpLlxwmybNFT0e2EDJjYl
         u+62SqmVUzmjqsrBHd2byu2KcWtVdCxmrt9iTMhgrGSw3cX729GcBJoGsXvKWSXYl9Js
         go8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739887974; x=1740492774;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tzYgRVcywhBYtuTTzJDErGjkC05GXKYOTab/tFE7SCE=;
        b=WPcNWHBojnJ1UQta7m/uKdhjUnnAC1Z0otA2yuW/xHu1AjrEs+dnW0CTrE1a7jLgnV
         iaJrv74nMnBW0AMre3mh6zjBxK7FmUUlHtQAXLkQDv6ariMXUHOcC4GRuxiGh+G9iBsV
         fMVeZePrSKVnRcBvDxpwZ8/n6ypfLsGe1cAY6nbHCTn8rHqkinhvzVehM+bQ1sk6/A9S
         siM6ZaILvBCSuu3CJjkt4pSAJW9ToTO1dcd9hq1DSD6ZUM+aWyuAvtqKX3iYBZDjuFrf
         TvlNmHpkeUHDtWKAX3DSG7YpsX90VGRlm7ggG4ux9+3j5KYHvIJOLqkzMzfL9EIhvyVd
         b2NQ==
X-Forwarded-Encrypted: i=1; AJvYcCVujY4D+5KYHUfh6K+TzUpmH9E27eJXgc0jYeDn2t7VV0CQwhgJn+tfYbWyi41ElwuHj2pf8+RKl8EQcO/T@lists.linaro.org
X-Gm-Message-State: AOJu0YzIXsox1cXJsmbenmO8cEsIPgvlntWa+0Bszdssu2tNVBCIGxZ3
	U39geoAssZQQD/pz/O3xuq1stTDH68sqM6BmPzSQqReFhV5U8VP1
X-Gm-Gg: ASbGnctqlciamKge8zqsNZXFSr/2rgGrsoq5hJ3NAPlI1r9vOWNush9UMAUuZEBlN5/
	bb66UtfywStH1gWjr5T+QI0pnVqldPe7JHxUPFQE2uLGBQFYc3jSeZeduu1yScgoDjQhRPhkBOr
	tye/iaQejO73SbhQLAwq04sb4YmNllBG6m+nI+gLsjxlUWGcTx89H9ABxJ0WkHhxU2OxdZHgGRG
	VWf/cYlkWgQ4Lj3OM5F3JtmRIXCPCqe9AtbX0KkgA2ITcqjmDJ2OgZh1AmO6S6iBmo4HGCCeTYH
	SeQOTTGh53l/VlfiJT4Nvjf1MdL9np1njb4GPrVyD/TT
X-Google-Smtp-Source: AGHT+IHQdmBtJTXbHOztlaXrqyk6KztRNhnBVJ/jRSTWe0s3IlZo6TDueGPoBa0nU58F8lBBcX3IRQ==
X-Received: by 2002:a05:600c:4f47:b0:439:9377:fa22 with SMTP id 5b1f17b1804b1-4399377fc5bmr26339075e9.18.1739887973904;
        Tue, 18 Feb 2025 06:12:53 -0800 (PST)
Received: from [10.254.108.83] (munvpn.amd.com. [165.204.72.6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43986b475ffsm52786645e9.17.2025.02.18.06.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 06:12:53 -0800 (PST)
Message-ID: <6ee944fe-57a7-478c-ab8c-723ce315049f@gmail.com>
Date: Tue, 18 Feb 2025 15:12:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Simona Vetter <simona.vetter@ffwll.ch>
References: <20250211163109.12200-1-christian.koenig@amd.com>
 <20250211163109.12200-5-christian.koenig@amd.com>
 <Z7NjlfKYlxhTgRqe@phenom.ffwll.local>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <Z7NjlfKYlxhTgRqe@phenom.ffwll.local>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 556A54460A
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RBL_NIXSPAM_FAIL(0.00)[209.85.128.48:server fail];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RBL_SENDERSCORE_REPUT_8(0.00)[209.85.128.48:from];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.48:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
Message-ID-Hash: ALQWQ5BO6KPDMZWDHMSM54HFLB6EGPP7
X-Message-ID-Hash: ALQWQ5BO6KPDMZWDHMSM54HFLB6EGPP7
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, tzimmermann@suse.de, simona@ffwll.ch, dmitry.osipenko@collabora.com, tvrtko.ursulin@igalia.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/4] dma-buf: drop caching of sg_tables
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ALQWQ5BO6KPDMZWDHMSM54HFLB6EGPP7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTcuMDIuMjUgdW0gMTc6Mjggc2NocmllYiBTaW1vbmEgVmV0dGVyOg0KPiBPbiBUdWUsIEZl
YiAxMSwgMjAyNSBhdCAwNTozMTowOVBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gVGhhdCB3YXMgcHVyZWx5IGZvciB0aGUgdHJhbnNpdGlvbiBmcm9tIHN0YXRpYyB0byBkeW5h
bWljIGRtYS1idWYNCj4+IGhhbmRsaW5nIGFuZCBjYW4gYmUgcmVtb3ZlZCBhZ2FpbiBub3cuDQo+
Pg0KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPg0KPiBZYXkhDQo+DQo+IE1pZ2h0IHVuY292ZXIgc29tZSBmdW4gaWYgcGVvcGxlIGhh
dmUgbWVhbndoaWxlIHN0YXJ0ZWQgdG8gcmVseSBvbiB0aGlzDQo+IGZvciBwZXJmIG9yIHNvbWV0
aGluZy4gQnV0IHdlJ2xsIGZpZ3VyZSB0aGF0IG91dCB3aGVuIGl0IGhhcHBlbnMuDQoNClllYWgg
dGhhdCB3YXMgZXhhY3RseSB0aGUgcmVhc29uIHdoeSBJIG1hZGUgdGhpcyBhIHNlcGFyYXRlIHBh
dGNoIGFuZCBkaWRuJ3QgbWl4ZWQgaXQgaW50byBwYXRjaCAjMy4NCg0KT24gdGhlIG90aGVyIGhh
bmQgSSdtIGZpbmUgdG8ga2VlcCBpdCBhIGJpdCBsb25nZXIgaWYgYW55Ym9keSBjb21wbGFpbnMu
DQoNCkNocmlzdGlhbi4NCg0KPg0KPiBSZXZpZXdlZC1ieTogU2ltb25hIFZldHRlciA8c2ltb25h
LnZldHRlckBmZndsbC5jaD4NCj4NCj4NCj4+IC0tLQ0KPj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmMgICAgICAgICAgICAgIHwgMzQgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4+ICBk
cml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jICAgICAgICAgICAgICB8ICAxIC0NCj4+ICBkcml2ZXJz
L2dwdS9kcm0vZHJtX3ByaW1lLmMgICAgICAgICAgICB8ICAxIC0NCj4+ICBkcml2ZXJzL2dwdS9k
cm0vdmlydGlvL3ZpcnRncHVfcHJpbWUuYyB8ICAxIC0NCj4+ICBpbmNsdWRlL2xpbnV4L2RtYS1i
dWYuaCAgICAgICAgICAgICAgICB8IDEzIC0tLS0tLS0tLS0NCj4+ICA1IGZpbGVzIGNoYW5nZWQs
IDUwIGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1h
LWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPj4gaW5kZXggMzU3Yjk0YTNkYmFh
Li4zNTIyMWM0ZGRiZjUgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
DQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+PiBAQCAtNjM2LDEwICs2MzYs
NiBAQCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Zl9leHBvcnQoY29uc3Qgc3RydWN0IGRtYV9idWZf
ZXhwb3J0X2luZm8gKmV4cF9pbmZvKQ0KPj4gIAkJICAgIHx8ICFleHBfaW5mby0+b3BzLT5yZWxl
YXNlKSkNCj4+ICAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOw0KPj4gIA0KPj4gLQlpZiAoV0FS
Tl9PTihleHBfaW5mby0+b3BzLT5jYWNoZV9zZ3RfbWFwcGluZyAmJg0KPj4gLQkJICAgIChleHBf
aW5mby0+b3BzLT5waW4gfHwgZXhwX2luZm8tPm9wcy0+dW5waW4pKSkNCj4+IC0JCXJldHVybiBF
UlJfUFRSKC1FSU5WQUwpOw0KPj4gLQ0KPj4gIAlpZiAoV0FSTl9PTighZXhwX2luZm8tPm9wcy0+
cGluICE9ICFleHBfaW5mby0+b3BzLT51bnBpbikpDQo+PiAgCQlyZXR1cm4gRVJSX1BUUigtRUlO
VkFMKTsNCj4+ICANCj4+IEBAIC05NjQsMTcgKzk2MCw3IEBAIHZvaWQgZG1hX2J1Zl9kZXRhY2go
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
KQ0KPj4gIAkJcmV0dXJuOw0KPj4gIA0KPj4gIAlkbWFfcmVzdl9sb2NrKGRtYWJ1Zi0+cmVzdiwg
TlVMTCk7DQo+PiAtDQo+PiAtCWlmIChhdHRhY2gtPnNndCkgew0KPj4gLQkJbWFuZ2xlX3NnX3Rh
YmxlKGF0dGFjaC0+c2d0KTsNCj4+IC0JCWF0dGFjaC0+ZG1hYnVmLT5vcHMtPnVubWFwX2RtYV9i
dWYoYXR0YWNoLCBhdHRhY2gtPnNndCwNCj4+IC0JCQkJCQkgICBhdHRhY2gtPmRpcik7DQo+PiAt
DQo+PiAtCQlpZiAoZG1hX2J1Zl9waW5fb25fbWFwKGF0dGFjaCkpDQo+PiAtCQkJZG1hX2J1Zl91
bnBpbihhdHRhY2gpOw0KPj4gLQl9DQo+PiAgCWxpc3RfZGVsKCZhdHRhY2gtPm5vZGUpOw0KPj4g
LQ0KPj4gIAlkbWFfcmVzdl91bmxvY2soZG1hYnVmLT5yZXN2KTsNCj4+ICANCj4+ICAJaWYgKGRt
YWJ1Zi0+b3BzLT5kZXRhY2gpDQo+PiBAQCAtMTA2OSwxOCArMTA1NSw2IEBAIHN0cnVjdCBzZ190
YWJsZSAqZG1hX2J1Zl9tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICph
dHRhY2gsDQo+PiAgDQo+PiAgCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVmLT5y
ZXN2KTsNCj4+ICANCj4+IC0JaWYgKGF0dGFjaC0+c2d0KSB7DQo+PiAtCQkvKg0KPj4gLQkJICog
VHdvIG1hcHBpbmdzIHdpdGggZGlmZmVyZW50IGRpcmVjdGlvbnMgZm9yIHRoZSBzYW1lDQo+PiAt
CQkgKiBhdHRhY2htZW50IGFyZSBub3QgYWxsb3dlZC4NCj4+IC0JCSAqLw0KPj4gLQkJaWYgKGF0
dGFjaC0+ZGlyICE9IGRpcmVjdGlvbiAmJg0KPj4gLQkJICAgIGF0dGFjaC0+ZGlyICE9IERNQV9C
SURJUkVDVElPTkFMKQ0KPj4gLQkJCXJldHVybiBFUlJfUFRSKC1FQlVTWSk7DQo+PiAtDQo+PiAt
CQlyZXR1cm4gYXR0YWNoLT5zZ3Q7DQo+PiAtCX0NCj4+IC0NCj4+ICAJaWYgKGRtYV9idWZfcGlu
X29uX21hcChhdHRhY2gpKSB7DQo+PiAgCQlyZXQgPSBhdHRhY2gtPmRtYWJ1Zi0+b3BzLT5waW4o
YXR0YWNoKTsNCj4+ICAJCWlmIChyZXQpDQo+PiBAQCAtMTEwNSwxMSArMTA3OSw2IEBAIHN0cnVj
dCBzZ190YWJsZSAqZG1hX2J1Zl9tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2gsDQo+PiAgCX0NCj4+ICAJbWFuZ2xlX3NnX3RhYmxlKHNnX3RhYmxlKTsNCj4+
ICANCj4+IC0JaWYgKGF0dGFjaC0+ZG1hYnVmLT5vcHMtPmNhY2hlX3NndF9tYXBwaW5nKSB7DQo+
PiAtCQlhdHRhY2gtPnNndCA9IHNnX3RhYmxlOw0KPj4gLQkJYXR0YWNoLT5kaXIgPSBkaXJlY3Rp
b247DQo+PiAtCX0NCj4+IC0NCj4+ICAjaWZkZWYgQ09ORklHX0RNQV9BUElfREVCVUcNCj4+ICAJ
ew0KPj4gIAkJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsNCj4+IEBAIC0xMTkwLDkgKzExNTksNiBA
QCB2b2lkIGRtYV9idWZfdW5tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50
ICphdHRhY2gsDQo+PiAgDQo+PiAgCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVm
LT5yZXN2KTsNCj4+ICANCj4+IC0JaWYgKGF0dGFjaC0+c2d0ID09IHNnX3RhYmxlKQ0KPj4gLQkJ
cmV0dXJuOw0KPj4gLQ0KPj4gIAltYW5nbGVfc2dfdGFibGUoc2dfdGFibGUpOw0KPj4gIAlhdHRh
Y2gtPmRtYWJ1Zi0+b3BzLT51bm1hcF9kbWFfYnVmKGF0dGFjaCwgc2dfdGFibGUsIGRpcmVjdGlv
bik7DQo+PiAgDQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYyBiL2Ry
aXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4+IGluZGV4IGNjNzM5OGNjMTdkNi4uMmZhMmM5MTM1
ZWFjIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KPj4gKysrIGIv
ZHJpdmVycy9kbWEtYnVmL3VkbWFidWYuYw0KPj4gQEAgLTI4NSw3ICsyODUsNiBAQCBzdGF0aWMg
aW50IGVuZF9jcHVfdWRtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAqYnVmLA0KPj4gIH0NCj4+ICANCj4+
ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIHVkbWFidWZfb3BzID0gew0KPj4gLQku
Y2FjaGVfc2d0X21hcHBpbmcgPSB0cnVlLA0KPj4gIAkubWFwX2RtYV9idWYJICAgPSBtYXBfdWRt
YWJ1ZiwNCj4+ICAJLnVubWFwX2RtYV9idWYJICAgPSB1bm1hcF91ZG1hYnVmLA0KPj4gIAkucmVs
ZWFzZQkgICA9IHJlbGVhc2VfdWRtYWJ1ZiwNCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMNCj4+IGluZGV4IDMy
YTg3ODFjZmQ2Ny4uYzI4NGYzMDZkNTk3IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2RybV9wcmltZS5jDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMNCj4+IEBA
IC04MTAsNyArODEwLDYgQEAgaW50IGRybV9nZW1fZG1hYnVmX21tYXAoc3RydWN0IGRtYV9idWYg
KmRtYV9idWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQ0KPj4gIEVYUE9SVF9TWU1CT0wo
ZHJtX2dlbV9kbWFidWZfbW1hcCk7DQo+PiAgDQo+PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFf
YnVmX29wcyBkcm1fZ2VtX3ByaW1lX2RtYWJ1Zl9vcHMgPSAgew0KPj4gLQkuY2FjaGVfc2d0X21h
cHBpbmcgPSB0cnVlLA0KPj4gIAkuYXR0YWNoID0gZHJtX2dlbV9tYXBfYXR0YWNoLA0KPj4gIAku
ZGV0YWNoID0gZHJtX2dlbV9tYXBfZGV0YWNoLA0KPj4gIAkubWFwX2RtYV9idWYgPSBkcm1fZ2Vt
X21hcF9kbWFfYnVmLA0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmly
dGdwdV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3ByaW1lLmMNCj4+
IGluZGV4IGZlNmEwYjAxODU3MS4uYzZmM2JlM2NiOTE0IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL3ZpcnRpby92aXJ0Z3B1X3ByaW1lLmMNCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS92aXJ0aW8vdmlydGdwdV9wcmltZS5jDQo+PiBAQCAtNzUsNyArNzUsNiBAQCBzdGF0aWMgdm9p
ZCB2aXJ0Z3B1X2dlbV91bm1hcF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0
dGFjaCwNCj4+ICANCj4+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHZpcnRpb19kbWFfYnVmX29wcyB2
aXJ0Z3B1X2RtYWJ1Zl9vcHMgPSAgew0KPj4gIAkub3BzID0gew0KPj4gLQkJLmNhY2hlX3NndF9t
YXBwaW5nID0gdHJ1ZSwNCj4+ICAJCS5hdHRhY2ggPSB2aXJ0aW9fZG1hX2J1Zl9hdHRhY2gsDQo+
PiAgCQkuZGV0YWNoID0gZHJtX2dlbV9tYXBfZGV0YWNoLA0KPj4gIAkJLm1hcF9kbWFfYnVmID0g
dmlydGdwdV9nZW1fbWFwX2RtYV9idWYsDQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9k
bWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPj4gaW5kZXggYzU0ZmYyZGRhOGNi
Li41NDRmOGY4YzNmNDQgMTAwNjQ0DQo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0K
Pj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4+IEBAIC0zNCwxNSArMzQsNiBAQCBz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50Ow0KPj4gICAqIEB2dW5tYXA6IFtvcHRpb25hbF0gdW5t
YXBzIGEgdm1hcCBmcm9tIHRoZSBidWZmZXINCj4+ICAgKi8NCj4+ICBzdHJ1Y3QgZG1hX2J1Zl9v
cHMgew0KPj4gLQkvKioNCj4+IC0JICAqIEBjYWNoZV9zZ3RfbWFwcGluZzoNCj4+IC0JICAqDQo+
PiAtCSAgKiBJZiB0cnVlIHRoZSBmcmFtZXdvcmsgd2lsbCBjYWNoZSB0aGUgZmlyc3QgbWFwcGlu
ZyBtYWRlIGZvciBlYWNoDQo+PiAtCSAgKiBhdHRhY2htZW50LiBUaGlzIGF2b2lkcyBjcmVhdGlu
ZyBtYXBwaW5ncyBmb3IgYXR0YWNobWVudHMgbXVsdGlwbGUNCj4+IC0JICAqIHRpbWVzLg0KPj4g
LQkgICovDQo+PiAtCWJvb2wgY2FjaGVfc2d0X21hcHBpbmc7DQo+PiAtDQo+PiAgCS8qKg0KPj4g
IAkgKiBAYXR0YWNoOg0KPj4gIAkgKg0KPj4gQEAgLTQ5Myw4ICs0ODQsNiBAQCBzdHJ1Y3QgZG1h
X2J1Zl9hdHRhY2hfb3BzIHsNCj4+ICAgKiBAZG1hYnVmOiBidWZmZXIgZm9yIHRoaXMgYXR0YWNo
bWVudC4NCj4+ICAgKiBAZGV2OiBkZXZpY2UgYXR0YWNoZWQgdG8gdGhlIGJ1ZmZlci4NCj4+ICAg
KiBAbm9kZTogbGlzdCBvZiBkbWFfYnVmX2F0dGFjaG1lbnQsIHByb3RlY3RlZCBieSBkbWFfcmVz
diBsb2NrIG9mIHRoZSBkbWFidWYuDQo+PiAtICogQHNndDogY2FjaGVkIG1hcHBpbmcuDQo+PiAt
ICogQGRpcjogZGlyZWN0aW9uIG9mIGNhY2hlZCBtYXBwaW5nLg0KPj4gICAqIEBwZWVyMnBlZXI6
IHRydWUgaWYgdGhlIGltcG9ydGVyIGNhbiBoYW5kbGUgcGVlciByZXNvdXJjZXMgd2l0aG91dCBw
YWdlcy4NCj4+ICAgKiBAcHJpdjogZXhwb3J0ZXIgc3BlY2lmaWMgYXR0YWNobWVudCBkYXRhLg0K
Pj4gICAqIEBpbXBvcnRlcl9vcHM6IGltcG9ydGVyIG9wZXJhdGlvbnMgZm9yIHRoaXMgYXR0YWNo
bWVudCwgaWYgcHJvdmlkZWQNCj4+IEBAIC01MTQsOCArNTAzLDYgQEAgc3RydWN0IGRtYV9idWZf
YXR0YWNobWVudCB7DQo+PiAgCXN0cnVjdCBkbWFfYnVmICpkbWFidWY7DQo+PiAgCXN0cnVjdCBk
ZXZpY2UgKmRldjsNCj4+ICAJc3RydWN0IGxpc3RfaGVhZCBub2RlOw0KPj4gLQlzdHJ1Y3Qgc2df
dGFibGUgKnNndDsNCj4+IC0JZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyOw0KPj4gIAlib29s
IHBlZXIycGVlcjsNCj4+ICAJY29uc3Qgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyAqaW1wb3J0
ZXJfb3BzOw0KPj4gIAl2b2lkICppbXBvcnRlcl9wcml2Ow0KPj4gLS0gDQo+PiAyLjM0LjENCj4+
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFy
by1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpU
byB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMu
bGluYXJvLm9yZwo=
