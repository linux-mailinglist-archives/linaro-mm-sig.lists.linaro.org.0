Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B69D1E777
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 12:39:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F958401B2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 Jan 2026 11:39:36 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by lists.linaro.org (Postfix) with ESMTPS id C98613F6FF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 11:39:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=YZOnuRp8;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.219.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-88a2ad13c24so82807076d6.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 03:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768390771; x=1768995571; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jbQULNNltYWNdEuVSBXiWpTsjD/Zwd5AGvb5VIFDPRo=;
        b=YZOnuRp8TOJkZQ7llWqxoVMTYJ+qzY287kusdpqBaHv6AJV1HdgoTTajA2Q0x8Pm05
         t7Jo0DkvHq5V/QCMgyktkWU2r948+3gnjEqD47vvP2ge9ML8taa2lNNMHhErbcvKQhsG
         U5/xNcPzsGYoNsmpJtXImvGfuR6JvFYJ48jN0/xLqczlYnWpPUnmyNCTJ8Kc0MQAteXU
         5oVHygKaMnzN/tHkHk7dId97DoiVZz4o0V4p40YtITOq4YvOFhRkJEkrhxYo18S97Qud
         R9q6wjJyCGW8F3e//QrkGitqaS/A4eia+y0RpMebDtXV2181n3WZiSDW8ay/yCjANVzE
         uL0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768390771; x=1768995571;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jbQULNNltYWNdEuVSBXiWpTsjD/Zwd5AGvb5VIFDPRo=;
        b=cbOEecQLeWJt0/JE816RpOFSK2nIeYgfNf5MELN6JSLbR4vts/v5TofNWtM1igxcmC
         Dcqa/NN1krWIlVcMHEb6gy6DR+4igbtgjwKYyJoWEZl/MYz26MW/H2cKjHlCZKVJQslU
         zYvQvt6XH/Y8IwGk5/eymJjrmnz/cnZbudgCTcTbKkGmjCnz+FhCAcNT0SOXuN0LqyqK
         MHKPhtJjnNJhFiaHAHwRZ+KiGFS/fKi+VD4G/D3lgR8etva5PhaJ+dYwK7bXhJU5wbfm
         wCt7vqYjjvgZ2+L1BqJzGnw2OYBczqSUCT0LEmLTe1u/T25VkiS4vfdJGiTyO7hT11IL
         NyiA==
X-Forwarded-Encrypted: i=1; AJvYcCWpwWqfugkjTSlz7PhgdTc4Sin7YoI1EV/MiT0AquLirFttAlE70yMqQozLIr6/LSIo6HLFWQiVI2FFIOKJ@lists.linaro.org
X-Gm-Message-State: AOJu0YweTW8llSuLUKuCircc4zrWCWjGKaCerfMIKKYDq0ZqIfv9eInz
	RId+VEMUOir/aQX4JT5UH0Y4ybih3bftPOahHX47wca6AKxnfyoHZMyP
X-Gm-Gg: AY/fxX5tFShCd2ZYmJ0V0k/AA7LROQoy7vL3+RVqMvE5X8Nlaw2kwXmUchnX3mm9RvF
	rPtr9Tvg1ZVRYK/GbPs0gxACD/933X1ua9iuEiCYtSazzgtCcO7SZQmWfDKhRGVVeQ/8EJm8mQt
	+/gqJwmWPTVODBvdzFck0eeO9b2oKxaiHWjS864ebYJ2Hcu1HJWqh1JQqyHTUaEpvJc4AEwmaga
	FXVGsi9X4ODXNkgOswU8JDIU84E0XvTrmiO6jv6eV/5yPPC4ZeMdhKc+VD3XBo8/GqUUmRaTQs7
	dvH3wI0Mr7nu3FByUewmEQcPnZ9yVcca+Mz3YoOALdn6Nquw4CUo96l4d4bD6nq+fdHwVDTExMV
	C1JoIDk8z8Eo/own/hR/MpEW9Sey+h7dgtGREPmYsLhF5pPqSndzcuz6QvM6P3RN85JXaiFtO6f
	npUOm3VS5TWFrTfLZpdWiFO+L3yLT8N6bWJmei5byX89I=
X-Received: by 2002:a05:6214:4003:b0:890:58b4:3e7c with SMTP id 6a1803df08f44-892743ded60mr29117166d6.33.1768390771211;
        Wed, 14 Jan 2026 03:39:31 -0800 (PST)
Received: from [10.254.120.192] (mkmvpn.amd.com. [165.204.54.211])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770e217bsm172711516d6.13.2026.01.14.03.39.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jan 2026 03:39:30 -0800 (PST)
Message-ID: <eb79bf68-a08f-49f3-b287-9e95831cee21@gmail.com>
Date: Wed, 14 Jan 2026 12:39:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tvrtko Ursulin <tursulin@ursulin.net>, phasta@mailbox.org,
 matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20260113152125.47380-1-christian.koenig@amd.com>
 <20260113152125.47380-3-christian.koenig@amd.com>
 <b85f053e-e26c-4762-b7f3-d8b1a58a3a41@ursulin.net>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <b85f053e-e26c-4762-b7f3-d8b1a58a3a41@ursulin.net>
X-Rspamd-Queue-Id: C98613F6FF
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.48:from];
	DWL_DNSWL_BLOCKED(0.00)[gmail.com:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.219.48:from];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: IF6OEQZC345I3PE5KD4D5XK63GQCQ7NI
X-Message-ID-Hash: IF6OEQZC345I3PE5KD4D5XK63GQCQ7NI
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/10] dma-buf: add dma_fence_is_initialized function
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IF6OEQZC345I3PE5KD4D5XK63GQCQ7NI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS8xNC8yNiAxMDo1MywgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IFwNCj4gT24gMTMvMDEv
MjAyNiAxNToxNiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IFNvbWUgZHJpdmVyIHVzZSBm
ZW5jZS0+b3BzIHRvIHRlc3QgaWYgYSBmZW5jZSB3YXMgaW5pdGlhbGl6ZWQgb3Igbm90Lg0KPj4g
VGhlIHByb2JsZW0gaXMgdGhhdCB0aGlzIHV0aWxpemVzIGludGVybmFsIGJlaGF2aW9yIG9mIHRo
ZSBkbWFfZmVuY2UNCj4+IGltcGxlbWVudGF0aW9uLg0KPj4NCj4+IFNvIGJldHRlciBhYnN0cmFj
dCB0aGF0IGludG8gYSBmdW5jdGlvbi4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9qb2IuYyB8IDEzICsrKysrKystLS0tLS0NCj4+IMKg
IGRyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX3JlbGVhc2UuY8KgwqDCoMKgwqDCoCB8wqAgMiArLQ0K
Pj4gwqAgaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfCAxMiArKysrKysrKysrKysNCj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9u
cygrKSwgNyBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2pvYi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2pvYi5jDQo+PiBpbmRleCAwYTBkY2JmMDc5OGQuLmI5N2Y5MGJiZThiOSAxMDA2NDQNCj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9qb2IuYw0KPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2pvYi5jDQo+PiBAQCAtMjc4LDkgKzI3
OCwxMCBAQCB2b2lkIGFtZGdwdV9qb2JfZnJlZV9yZXNvdXJjZXMoc3RydWN0IGFtZGdwdV9qb2Ig
KmpvYikNCj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgaTsNCj4+IMKgIMKgwqDCoMKgwqAgLyogQ2hl
Y2sgaWYgYW55IGZlbmNlcyB3ZXJlIGluaXRpYWxpemVkICovDQo+PiAtwqDCoMKgIGlmIChqb2It
PmJhc2Uuc19mZW5jZSAmJiBqb2ItPmJhc2Uuc19mZW5jZS0+ZmluaXNoZWQub3BzKQ0KPj4gK8Kg
wqDCoCBpZiAoam9iLT5iYXNlLnNfZmVuY2UgJiYNCj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFfZmVu
Y2VfaXNfaW5pdGlhbGl6ZWQoJmpvYi0+YmFzZS5zX2ZlbmNlLT5maW5pc2hlZCkpDQo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgZiA9ICZqb2ItPmJhc2Uuc19mZW5jZS0+ZmluaXNoZWQ7DQo+PiAtwqDC
oMKgIGVsc2UgaWYgKGpvYi0+aHdfZmVuY2UgJiYgam9iLT5od19mZW5jZS0+YmFzZS5vcHMpDQo+
PiArwqDCoMKgIGVsc2UgaWYgKGRtYV9mZW5jZV9pc19pbml0aWFsaXplZCgmam9iLT5od19mZW5j
ZS0+YmFzZSkpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZiA9ICZqb2ItPmh3X2ZlbmNlLT5iYXNl
Ow0KPj4gwqDCoMKgwqDCoCBlbHNlDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZiA9IE5VTEw7DQo+
PiBAQCAtMjk3LDExICsyOTgsMTEgQEAgc3RhdGljIHZvaWQgYW1kZ3B1X2pvYl9mcmVlX2NiKHN0
cnVjdCBkcm1fc2NoZWRfam9iICpzX2pvYikNCj4+IMKgIMKgwqDCoMKgwqAgYW1kZ3B1X3N5bmNf
ZnJlZSgmam9iLT5leHBsaWNpdF9zeW5jKTsNCj4+IMKgIC3CoMKgwqAgaWYgKGpvYi0+aHdfZmVu
Y2UtPmJhc2Uub3BzKQ0KPj4gK8KgwqDCoCBpZiAoZG1hX2ZlbmNlX2lzX2luaXRpYWxpemVkKCZq
b2ItPmh3X2ZlbmNlLT5iYXNlKSkNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0
KCZqb2ItPmh3X2ZlbmNlLT5iYXNlKTsNCj4+IMKgwqDCoMKgwqAgZWxzZQ0KPj4gwqDCoMKgwqDC
oMKgwqDCoMKgIGtmcmVlKGpvYi0+aHdfZmVuY2UpOw0KPj4gLcKgwqDCoCBpZiAoam9iLT5od192
bV9mZW5jZS0+YmFzZS5vcHMpDQo+PiArwqDCoMKgIGlmIChkbWFfZmVuY2VfaXNfaW5pdGlhbGl6
ZWQoJmpvYi0+aHdfdm1fZmVuY2UtPmJhc2UpKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9m
ZW5jZV9wdXQoJmpvYi0+aHdfdm1fZmVuY2UtPmJhc2UpOw0KPj4gwqDCoMKgwqDCoCBlbHNlDQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqAga2ZyZWUoam9iLT5od192bV9mZW5jZSk7DQo+PiBAQCAtMzM1
LDExICszMzYsMTEgQEAgdm9pZCBhbWRncHVfam9iX2ZyZWUoc3RydWN0IGFtZGdwdV9qb2IgKmpv
YikNCj4+IMKgwqDCoMKgwqAgaWYgKGpvYi0+Z2FuZ19zdWJtaXQgIT0gJmpvYi0+YmFzZS5zX2Zl
bmNlLT5zY2hlZHVsZWQpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3B1dChqb2It
Pmdhbmdfc3VibWl0KTsNCj4+IMKgIC3CoMKgwqAgaWYgKGpvYi0+aHdfZmVuY2UtPmJhc2Uub3Bz
KQ0KPj4gK8KgwqDCoCBpZiAoZG1hX2ZlbmNlX2lzX2luaXRpYWxpemVkKCZqb2ItPmh3X2ZlbmNl
LT5iYXNlKSkNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfZmVuY2VfcHV0KCZqb2ItPmh3X2Zl
bmNlLT5iYXNlKTsNCj4+IMKgwqDCoMKgwqAgZWxzZQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGtm
cmVlKGpvYi0+aHdfZmVuY2UpOw0KPj4gLcKgwqDCoCBpZiAoam9iLT5od192bV9mZW5jZS0+YmFz
ZS5vcHMpDQo+PiArwqDCoMKgIGlmIChkbWFfZmVuY2VfaXNfaW5pdGlhbGl6ZWQoJmpvYi0+aHdf
dm1fZmVuY2UtPmJhc2UpKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQoJmpv
Yi0+aHdfdm1fZmVuY2UtPmJhc2UpOw0KPj4gwqDCoMKgwqDCoCBlbHNlDQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqAga2ZyZWUoam9iLT5od192bV9mZW5jZSk7DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jIGIvZHJpdmVycy9ncHUvZHJtL3F4bC9xeGxfcmVs
ZWFzZS5jDQo+PiBpbmRleCA3YjNjOWE2MDE2ZGIuLmIzOGFlMGIyNWYzYyAxMDA2NDQNCj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX3JlbGVhc2UuYw0KPj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3F4bC9xeGxfcmVsZWFzZS5jDQo+PiBAQCAtMTQ2LDcgKzE0Niw3IEBAIHF4bF9yZWxl
YXNlX2ZyZWUoc3RydWN0IHF4bF9kZXZpY2UgKnFkZXYsDQo+PiDCoMKgwqDCoMKgIGlkcl9yZW1v
dmUoJnFkZXYtPnJlbGVhc2VfaWRyLCByZWxlYXNlLT5pZCk7DQo+PiDCoMKgwqDCoMKgIHNwaW5f
dW5sb2NrKCZxZGV2LT5yZWxlYXNlX2lkcl9sb2NrKTsNCj4+IMKgIC3CoMKgwqAgaWYgKHJlbGVh
c2UtPmJhc2Uub3BzKSB7DQo+PiArwqDCoMKgIGlmIChkbWFfZmVuY2VfaXNfaW5pdGlhbGl6ZWQo
JnJlbGVhc2UtPmJhc2UpKSB7DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgV0FSTl9PTihsaXN0X2Vt
cHR5KCZyZWxlYXNlLT5ib3MpKTsNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBxeGxfcmVsZWFzZV9m
cmVlX2xpc3QocmVsZWFzZSk7DQo+PiDCoCBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEt
ZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+IGluZGV4IGVlYTY3NGFjZGZh
Ni4uMzcxYWE4ZWNmMThlIDEwMDY0NA0KPj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2Uu
aA0KPj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4gQEAgLTI3NCw2ICsyNzQs
MTggQEAgdm9pZCBkbWFfZmVuY2VfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqa3JlZik7DQo+PiDCoCB2
b2lkIGRtYV9mZW5jZV9mcmVlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsNCj4+IMKgIHZvaWQg
ZG1hX2ZlbmNlX2Rlc2NyaWJlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBzdHJ1Y3Qgc2VxX2Zp
bGUgKnNlcSk7DQo+PiDCoCArLyoqDQo+PiArICogZG1hX2ZlbmNlX2lzX2luaXRpYWxpemVkIC0g
dGVzdCBpZiBmZW5jZSB3YXMgaW5pdGlhbGl6ZWQNCj4+ICsgKiBAZmVuY2U6IGZlbmNlIHRvIHRl
c3QNCj4+ICsgKg0KPj4gKyAqIFJldHVybjogVHJ1ZSBpZiBmZW5jZSB3YXMgaW5pdGlhbGl6ZWQs
IGZhbHNlIG90aGVyd2lzZS4gV29ya3MgY29ycmVjdGx5IG9ubHkNCj4+ICsgKiB3aGVuIG1lbW9y
eSBiYWNraW5nIHRoZSBmZW5jZSBzdHJ1Y3R1cmUgaXMgemVybyBpbml0aWFsaXplZCBvbiBhbGxv
Y2F0aW9uLg0KPj4gKyAqLw0KPj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBkbWFfZmVuY2VfaXNfaW5p
dGlhbGl6ZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+PiArew0KPj4gK8KgwqDCoCByZXR1
cm4gZmVuY2UgJiYgISFmZW5jZS0+b3BzOw0KPiANCj4gVGhpcyBwYXRjaCBzaG91bGQgcHJlY2Vk
ZSB0aGUgb25lIGFkZGluZyBSQ1UgcHJvdGVjdGlvbiB0byBmZW5jZS0+b3BzLiBBbmQgdGhhdCBv
bmUgdGhlbiBuZWVkcyB0byBhZGQgYSByY3VfZGVyZWZlcmVuY2UoKSBoZXJlLg0KDQpHb29kIHBv
aW50Lg0KDQo+IEF0IHdoaWNoIHBvaW50IGhvd2V2ZXIgaXQgd291bGQgc3RhcnQgZXhwbG9kaW5n
Pw0KDQpXaGVuIHdlIHN0YXJ0IHNldHRpbmcgdGhlIG9wcyBwb2ludGVyIHRvIE5VTEwgaW4gdGhl
IG5leHQgcGF0Y2guDQoNCj4gV2hpY2ggYWxzbyBtZWFucyB0aGUgbmV3IEFQSSBpcyByYWN5IGJ5
IGRlZmluaXRpb24gYW5kIGNhbiBnaXZlIGZhbHNlIHBvc2l0aXZlcyBpZiBmZW5jZSB3b3VsZCBi
ZSB0byBiZSBzaWduYWxlZCBhcyBzb21lb25lIGlzIGNoZWNraW5nLg0KDQpPaCwgdGhhdCBpcyBh
IHJlYWxseSByZWFsbHkgZ29vZCBwb2ludC4gSSBoYXZlbid0IHRob3VnaHQgYWJvdXQgdGhhdCBi
ZWNhdXNlIGFsbCBjdXJyZW50IHVzZXJzIHdvdWxkIGNoZWNrIHRoZSBmZW5jZSBvbmx5IGFmdGVy
IGl0IGlzIHNpZ25hbGVkLg0KDQo+IEhtbS4uIGlzIHRoZSBuZXcgQVBJIHRvbyB3ZWFrLCBiZWlu
ZyBhYmxlIHRvIG9ubHkgYmUgY2FsbGVkIHVuZGVyIHZlcnkgbGltaXRlZCBjaXJjdW1zdGFuY2Vz
Pw0KDQpZZXMsIGV4YWN0bHkgdGhhdC4gQWxsIGNhbGxlcnMgdXNlIHRoaXMgb25seSB0byBkZWNp
ZGUgb24gdGhlIGNvcnJlY3QgY2xlYW51cCBwYXRoLg0KDQpTbyB0aGUgZmVuY2UgaXMgZWl0aGVy
IGZ1bGx5IHNpZ25hbGVkIG9yIHdhcyBuZXZlciBpbml0aWFsaXplZCBpbiB0aGUgZmlyc3QgcGxh
Y2UuDQoNCj4gV291bGQgaXQgYmUgYmV0dGVyIHRvIHNvbHZlIGl0IGluIHRoZSBkcml2ZXJzIGJ5
IHRyYWNraW5nIHN0YXRlPw0KDQpUaGUgYWx0ZXJuYXRpdmUgSSBoYWQgaW4gbWluZCB3YXMgdG8g
dXNlIGFub3RoZXIgRE1BX0ZFTkNFX0ZMQUdfLi4uIGZvciB0aGF0Lg0KDQpJIHdpbGwgcHJvYmFi
bHkgdXNlIHRoYXQgYXBwcm9hY2ggaW5zdGVhZCwganVzdCB0byBtYWtlIGl0IGV4dHJhIGRlZmVu
c2l2ZS4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gVHZy
dGtvDQo+IA0KPj4gK30NCj4+ICsNCj4+IMKgIC8qKg0KPj4gwqDCoCAqIGRtYV9mZW5jZV9wdXQg
LSBkZWNyZWFzZXMgcmVmY291bnQgb2YgdGhlIGZlbmNlDQo+PiDCoMKgICogQGZlbmNlOiBmZW5j
ZSB0byByZWR1Y2UgcmVmY291bnQgb2YNCj4gDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
