Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBOwNtQM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:22:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BD167411A61
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:22:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D411440A8C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:22:43 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	by lists.linaro.org (Postfix) with ESMTPS id 46BDA3F61F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jan 2026 11:47:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=DfnWhYm5;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.52 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4359a302794so574513f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Jan 2026 03:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769082423; x=1769687223; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/c04FssyRzWAvFZbUZZ5iSwy4KaO1b4NaDQ9GK8JLME=;
        b=DfnWhYm5o3s130AChQkFmj7bNJqf3j4+KLGieukV5fz8AkhOEhLYqfDI4TqlpYb/K5
         /06SSnGmkBrjkyzQ2M49HuRYSBV5ioetLC5vaI/UHD7saFTt1ZwqNRLado2elJxOaM/R
         O0nUJUStlatVcsX8QxeIAgM/6vyqm39AOpLbkUzjFkFosVUHn5ThBISWueNgBvKhwrb5
         doXleUevs85CBozrRzg1umbjzpQqrglSGE3dyDADWg25iQQGBCOYgJQ0KBqBU2M42hM9
         SeE+mbL/3FDw3UGX1+YoTY3jLRA5Omix8UwRMXXvD3ZDful26sQqe9lHHrDB8RMBGbg0
         /CfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769082423; x=1769687223;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/c04FssyRzWAvFZbUZZ5iSwy4KaO1b4NaDQ9GK8JLME=;
        b=Z9kct8TpZ7wicMy+CMGX3T4TYe8NousSJxQwxwmRmBfCzZF7A5oyr1tPjv57s5C8rA
         +qeWhSjd8gDVgmO2eD8I8eh7y1Z3QcZbCuaWOUj5mVEIViCNmkQ7UMSYSSuqMrlRMIvp
         3+/txBAVzZMcml24yqhgnmhW4YwnDs3sD8570s8ZQcf/orDeFrPgzlQ7BVfsby35Gp0t
         nM2bhyhehyUdJXB98+UoO40BjNHm9DY8rmIMbVr2rEB47qdBt0APhI3O85l2ggbXNbLa
         sqZII0uRex4foqKWotHm5sAcScWG1Ad6ieQ/M7WxvcGw63rGNnTY5kLkfxgc3iaaYUJ6
         SuLg==
X-Forwarded-Encrypted: i=1; AJvYcCVdUIGwGny49CezlqgcWmP7UdyFybIVofRbtrcs09KN78ftbf394guKPSCPVvBeaxN065eVnAMd8ZAGWX7W@lists.linaro.org
X-Gm-Message-State: AOJu0YxQzcCudw8U42j9Xuq8HjrVqPjigtL4CQbjS8pp5I7I3i/sBK+e
	3j8v+rRyk4dQwiPB4xtDAVTihHC7sRYN5RtrjWLPOzp8+bJT+Clj2786
X-Gm-Gg: AZuq6aLKv5rXUobfOD6ZSRb0zLwXlD6IdkSLZyfjCYBlDgRb5XvvDZokgLfgjr+R30m
	5G8BetLOVkHoKq83gvJlDEYm0w3npYdPQojpnEMnEm/KglydnZsSvt35gkkgWJbPYZ3iXSfeiM1
	vOr0UxYDtjh5RC9h5P3K4WXwnhJRyQQW41V4KSL+/uV6VwJstYi2jvtAG5jrUoFbKvuAgaDncVV
	8RAW5cbAzM62cqUHfqygSmx16BwMjVcuWeltaYz0BmRGZ9CbM77DUi45GRLP3egP5ARef1dC9y2
	pdeI/KlanOEa98Bqo4jyRcIMxrVmawV299IEm7zOBs2CY19PmN6MWWHN8QKk74w0P3CupM9cLnK
	qnsJn8v7pbDbtZU9gP5ZUbXr4/fsjeUQgbXM4IUJNFN2yFkxBrbx9i1Cu3gMQCrjJ8wvy+mH7PR
	yJm2X9JK/gI2o+Dys5ZSmoFsPF/cO5btrXOgpC5W0/yHxwQRikRvUn5x+Vwh3I3cqqVnRusDuoF
	uyyjJ0ieEbIdbAJX/IX5QqNcsZSJoHkzQSgyM025g6mSjo=
X-Received: by 2002:a05:6000:144b:b0:435:95ce:836e with SMTP id ffacd0b85a97d-43595ce838amr11818024f8f.55.1769082423045;
        Thu, 22 Jan 2026 03:47:03 -0800 (PST)
Received: from ?IPV6:2620:10d:c096:325:77fd:1068:74c8:af87? ([2620:10d:c092:600::1:46c4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4358f138e26sm19447555f8f.17.2026.01.22.03.47.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 03:47:02 -0800 (PST)
Message-ID: <d3389449-f344-48ae-ab13-697e01d1cc46@gmail.com>
Date: Thu, 22 Jan 2026 11:46:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nitesh Shetty <nj.shetty@samsung.com>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <51cddd97b31d80ec8842a88b9f3c9881419e8a7b.1763725387.git.asml.silence@gmail.com>
 <CGME20260121074135epcas5p2eeb621d6acc9b4b73e6d45f5a40c078d@epcas5p2.samsung.com>
 <20260121073724.dja6wyqyf5apkdcx@green245.gost>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <20260121073724.dja6wyqyf5apkdcx@green245.gost>
X-Spamd-Bar: ----
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: J3BVGLC4BVBNZ7YXPFPABYPCUMCECAVB
X-Message-ID-Hash: J3BVGLC4BVBNZ7YXPFPABYPCUMCECAVB
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:21 +0000
CC: linux-block@vger.kernel.org, io-uring@vger.kernel.org, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 05/11] block: add infra to handle dmabuf tokens
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J3BVGLC4BVBNZ7YXPFPABYPCUMCECAVB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[2020];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.653];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: BD167411A61
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS8yMS8yNiAwNzozNywgTml0ZXNoIFNoZXR0eSB3cm90ZToNCj4gT24gMjMvMTEvMjUgMTA6
NTFQTSwgUGF2ZWwgQmVndW5rb3Ygd3JvdGU6DQo+PiBBZGQgYmxrLW1xIGluZnJhc3RydWN0dXJl
IHRvIGhhbmRsZSBkbWFidWYgdG9rZW5zLiBUaGVyZSBhcmUgdHdvIG1haW4NCj4+IG9iamVjdHMu
IFRoZSBmaXJzdCBpcyBzdHJ1Y3QgYmxrX21xX2RtYV90b2tlbiwgd2hpY2ggaXMgYW4gZXh0ZW5z
aW9uIG9mDQo+PiBzdHJ1Y3QgZG1hX3Rva2VuIGFuZCBwYXNzZWQgaW4gYW4gaXRlcmF0b3IuIFRo
ZSBzZWNvbmQgaXMgc3RydWN0DQo+PiBibGtfbXFfZG1hX21hcCwgd2hpY2gga2VlcHMgdGhlIGFj
dHVhbCBtYXBwaW5nIGFuZCB1bmxpa2UgdGhlIHRva2VuLCBjYW4NCj4+IGJlIGVqZWN0ZWQgKGUu
Zy4gYnkgbW92ZV9ub3RpZnkpIGFuZCByZWNyZWF0ZWQuDQo+Pg0KPj4gVGhlIHRva2VuIGtlZXBz
IGFuIHJjdSBwcm90ZWN0ZWQgcG9pbnRlciB0byB0aGUgbWFwcGluZywgc28gd2hlbiBpdA0KPj4g
cmVzb2x2ZXMgYSB0b2tlbiBpbnRvIGEgbWFwcGluZyB0byBwYXNzIGl0IHRvIGEgcmVxdWVzdCwg
aXQnbGwgZG8gYW4gcmN1DQo+PiBwcm90ZWN0ZWQgbG9va3VwIGFuZCBnZXQgYSBwZXJjcHUgcmVm
ZXJlbmNlIHRvIHRoZSBtYXBwaW5nLg0KPj4NCj4+IElmIHRoZXJlIGlzIG5vIGN1cnJlbnQgbWFw
cGluZyBhdHRhY2hlZCB0byBhIHRva2VuLCBpdCdsbCBuZWVkIHRvIGJlDQo+PiBjcmVhdGVkIGJ5
IGNhbGxpbmcgdGhlIGRyaXZlciAoZS5nLiBudm1lKSB2aWEgYSBuZXcgY2FsbGJhY2suIEl0DQo+
PiByZXF1aXJlcyB3YWl0aW5nLCB0aGVmb3JlIGNhbid0IGJlIGRvbmUgZm9yIG5vd2FpdCByZXF1
ZXN0cyBhbmQgY291bGRuJ3QNCj4+IGhhcHBlbiBkZWVwZXIgaW4gdGhlIHN0YWNrLCBlLmcuIGR1
cmluZyBudm1lIHJlcXVlc3Qgc3VibWlzc2lvbi4NCj4+DQo+PiBUaGUgc3RydWN0dXJlIHNwbGl0
IGlzIG5lZWRlZCBiZWNhdXNlIG1vdmVfbm90aWZ5IGNhbiByZXF1ZXN0IHRvDQo+PiBpbnZhbGlk
YXRlIHRoZSBkbWEgbWFwcGluZyBhdCBhbnkgbW9tZW50LCBhbmQgd2UgbmVlZCBhIHdheSB0bw0K
Pj4gY29uY3VycmVudGx5IHJlbW92ZSBpdCBhbmQgd2FpdCBmb3IgdGhlIGluZmxpZ2h0IHJlcXVl
c3RzIHVzaW5nIHRoZQ0KPj4gcHJldmlvdXMgbWFwcGluZyB0byBjb21wbGV0ZS4NCj4+DQo+PiBT
aWduZWQtb2ZmLWJ5OiBQYXZlbCBCZWd1bmtvdiA8YXNtbC5zaWxlbmNlQGdtYWlsLmNvbT4NCj4+
IC0tLQ0KPj4gYmxvY2svTWFrZWZpbGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfMKgwqAgMSArDQo+PiBibG9jay9iZGV2LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoCAxNCArKw0KPj4gYmxvY2svYmxrLW1xLWRtYS10b2tlbi5jwqDCoMKg
wqDCoMKgwqDCoCB8IDIzNiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+PiBibG9j
ay9ibGstbXEuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMjAgKysr
DQo+PiBibG9jay9mb3BzLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoMKgIDEgKw0KPj4gaW5jbHVkZS9saW51eC9ibGstbXEtZG1hLXRva2VuLmggfMKgIDYwICsr
KysrKysrDQo+PiBpbmNsdWRlL2xpbnV4L2Jsay1tcS5owqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
IDIxICsrKw0KPj4gaW5jbHVkZS9saW51eC9ibGtkZXYuaMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzC
oMKgIDMgKw0KPj4gOCBmaWxlcyBjaGFuZ2VkLCAzNTYgaW5zZXJ0aW9ucygrKQ0KPj4gY3JlYXRl
IG1vZGUgMTAwNjQ0IGJsb2NrL2Jsay1tcS1kbWEtdG9rZW4uYw0KPj4gY3JlYXRlIG1vZGUgMTAw
NjQ0IGluY2x1ZGUvbGludXgvYmxrLW1xLWRtYS10b2tlbi5oDQo+Pg0KPj4gZGlmZiAtLWdpdCBh
L2Jsb2NrL01ha2VmaWxlIGIvYmxvY2svTWFrZWZpbGUNCj4+IGluZGV4IGM2NWY0ZGE5MzcwMi4u
MDE5MGU1YWE5ZjAwIDEwMDY0NA0KLi4uDQo+PiBkaWZmIC0tZ2l0IGEvYmxvY2svYmxrLW1xLmMg
Yi9ibG9jay9ibGstbXEuYw0KPj4gaW5kZXggZjI2NTBjOTdhNzVlLi4xZmYzYTdlMzE5MWIgMTAw
NjQ0DQo+PiAtLS0gYS9ibG9jay9ibGstbXEuYw0KPj4gKysrIGIvYmxvY2svYmxrLW1xLmMNCj4+
IEBAIC0yOSw2ICsyOSw3IEBADQo+PiAjaW5jbHVkZSA8bGludXgvYmxrLWNyeXB0by5oPg0KPj4g
I2luY2x1ZGUgPGxpbnV4L3BhcnRfc3RhdC5oPg0KPj4gI2luY2x1ZGUgPGxpbnV4L3NjaGVkL2lz
b2xhdGlvbi5oPg0KPj4gKyNpbmNsdWRlIDxsaW51eC9ibGstbXEtZG1hLXRva2VuLmg+DQo+Pg0K
Pj4gI2luY2x1ZGUgPHRyYWNlL2V2ZW50cy9ibG9jay5oPg0KPj4NCj4+IEBAIC00MzksNiArNDQw
LDcgQEAgc3RhdGljIHN0cnVjdCByZXF1ZXN0ICpibGtfbXFfcnFfY3R4X2luaXQoc3RydWN0IGJs
a19tcV9hbGxvY19kYXRhICpkYXRhLA0KPj4gwqDCoMKgwqBycS0+bnJfaW50ZWdyaXR5X3NlZ21l
bnRzID0gMDsNCj4+IMKgwqDCoMKgcnEtPmVuZF9pbyA9IE5VTEw7DQo+PiDCoMKgwqDCoHJxLT5l
bmRfaW9fZGF0YSA9IE5VTEw7DQo+PiArwqDCoMKgIHJxLT5kbWFfbWFwID0gTlVMTDsNCj4+DQo+
PiDCoMKgwqDCoGJsa19jcnlwdG9fcnFfc2V0X2RlZmF1bHRzKHJxKTsNCj4+IMKgwqDCoMKgSU5J
VF9MSVNUX0hFQUQoJnJxLT5xdWV1ZWxpc3QpOw0KPj4gQEAgLTc5NCw2ICs3OTYsNyBAQCBzdGF0
aWMgdm9pZCBfX2Jsa19tcV9mcmVlX3JlcXVlc3Qoc3RydWN0IHJlcXVlc3QgKnJxKQ0KPj4gwqDC
oMKgwqBibGtfcG1fbWFya19sYXN0X2J1c3kocnEpOw0KPj4gwqDCoMKgwqBycS0+bXFfaGN0eCA9
IE5VTEw7DQo+Pg0KPj4gK8KgwqDCoCBibGtfcnFfZHJvcF9kbWFfbWFwKHJxKTsNCj4gYmxrX3Jx
X2Ryb3BfZG1hX21hcChycSksIG5lZWRzIHRvIGJlIGFkZGVkIGluIGJsa19tcV9lbmRfcmVxdWVz
dF9iYXRjaA0KPiBhcyB3ZWxsWzFdLCBvdGhlcndpc2UgSSBhbSBzZWVpbmcgd2UgbGVhdmUgd2l0
aCBpbmNyZWFzZWQgcmVmZXJlbmNlDQo+IGNvdW50IGluIGRtYS1idWYgZXhwb3J0ZXIgc2lkZS4N
Cj4gDQo+IFRoYW5rcywNCj4gTml0ZXNoDQo+IA0KPiBbMV0NCj4gLS0tIGEvYmxvY2svYmxrLW1x
LmMNCj4gKysrIGIvYmxvY2svYmxrLW1xLmMNCj4gQEAgLTEyMTQsNiArMTIxNCw3IEBAIHZvaWQg
YmxrX21xX2VuZF9yZXF1ZXN0X2JhdGNoKHN0cnVjdCBpb19jb21wX2JhdGNoICppb2IpDQo+IA0K
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmxrX2NyeXB0b19mcmVlX3JlcXVl
c3QocnEpOw0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmxrX3BtX21hcmtf
bGFzdF9idXN5KHJxKTsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYmxrX3JxX2Ry
b3BfZG1hX21hcChycSk7DQoNCkFoIHllcywgdGhhbmtzIE5pdGVzaA0KDQotLSANClBhdmVsIEJl
Z3Vua292DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
