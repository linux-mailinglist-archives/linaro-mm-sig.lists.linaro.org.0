Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEIjGBr/4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:24:10 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C138410A39
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:24:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CB06405CA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:24:09 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 3041D3F69B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 14:14:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=rzFCGSM+;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.128.53 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47775fb6c56so8365405e9.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 06:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1763648067; x=1764252867; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=l4aXDIqbXLzQPpFmVuBKROa0mL/5b0LUIDBWeii3LLw=;
        b=rzFCGSM+PV5KUmDPuucjXlNZ5gJBagvHF9FpZCH75LSfYnUE3rZI71znDs2qbuLx8w
         tw4qH/7nFIUZtvg0null21oS7q1kyvse8Rgtmn+w1pu5YXfk1OxQxlFEgG1dtE5Wuk7/
         4jDio//Aa/DkaOcvzgtLaMlBIGlmZ6TA9KWXQ8VYYo7cWzEmz6Ned/5dMTQKV/t4pfdM
         012t42PYNCFAUaQGsOruP506D2ZgQ+PeVaQONlNVGQT4mB5hUYAEkZQ2ywZA8ea1TSOH
         lM3pRMwTg2EAlm+OJelvK7c3k+obkrXottx0Xn8+igexoIYl6c546v897RZwZh03P0Nj
         r1TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763648067; x=1764252867;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l4aXDIqbXLzQPpFmVuBKROa0mL/5b0LUIDBWeii3LLw=;
        b=HrioDsMG0jc4O+nDYX8JoUMx27jWfGMuFSsjv7RFzGsilIFXgKbgKHDdrcdAbnR2gW
         kbQVRIUhAJ0I+f4ItjYS4U2NQlxK7uJwgmc1YjgLdIiI9TMfF4PXtsY4N5fqOkFSvESo
         seaO8Uqu27nBs2IVaLnhUraIDYIhdTyWlAbx76E6JjUBkO0PNPGFaTzp3VcDy9gD/7Bo
         epAvi0XmUezKKyvg7VuVGPT+xpBIk+WCVRPGmfLnlmrU2qDgmHFiX157v6GV4n/9QhF6
         X6P4SNelk71gkmL8y+NYe1MGaDhkW6d/LcOjR4EWHn2BG3hXFYIvXrH+S6ixIVWCOL2T
         mOSg==
X-Forwarded-Encrypted: i=1; AJvYcCXpWRkCWuwGVMtyJg9yTEiDnQ4Sl1pQ3LNIgQlset1bb2OxDc6mTvyklIEuNN+s0anPax9lvgiMbOp2Mq5Z@lists.linaro.org
X-Gm-Message-State: AOJu0YxM8TEBI2GeBIqzspyFDdr7DbN+NWA+MVTSuZF6Cns30yuJ6IpG
	NfnXKU0SWZ/BYcmdipuwhF4Eh4sUX5tIPmV+yn9sTPJ+r+rs8Us/NDWzhVrZ2FIZZsQ=
X-Gm-Gg: ASbGncuHSBPvKHWXrTqxC+RuMH2res4a99M3S+IRW4PCeIVP+mkqnvOrwSdpXWa68aO
	VKOzI2Wn6X+1pIdBpotWNCEII/EFonap0/ROu+F7scVeoCgeFcgJM41QLFMwHEANH5msLS0PCAw
	6FYbft0TXAmKtmWEPh/8xbqmnUHuRls1TptjVjgAz5Cwmvw2+6Lv+eZphviF8awFlj9gW5UCPoD
	ExxXlag3UA4sNWuD6EQKxYJorV7x3udwGFmzmLG79jMCOVh/t5OUP3Wtvp+2/SrYFGsBMA+khwn
	0HVRBrhcDosXAGosBRp9KXvnyaeQOH2qF3TCyRW0Q9Bj/FeBmjjjdgMCDB9i5aB/enH4yAcBqdX
	PQOwmaKOyD598iQSFMxdPoFJr8CwlcNJDMSgsrXmaatAcN07IUHL4ACtGaX0ioMVMOqBKtbHjiy
	sNop+lduZoSHk4c6xN5oi/PipgQrLMfHW9A1pYLED/viI=
X-Google-Smtp-Source: AGHT+IFnJhlqTiz2wCZ5pq9bATxrBbTFVbGNJfe4zz/siDIlX2GmBiOG/I+Jy/HPMkfisN/o/4Y3WQ==
X-Received: by 2002:a05:600c:1c25:b0:477:5c58:3d42 with SMTP id 5b1f17b1804b1-477b895912cmr43182905e9.10.1763648067124;
        Thu, 20 Nov 2025 06:14:27 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9e051d8sm66346425e9.5.2025.11.20.06.14.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 06:14:26 -0800 (PST)
Message-ID: <cb0b8f5b-11f8-4fee-8d72-396b05f9f708@ursulin.net>
Date: Thu, 20 Nov 2025 14:14:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-4-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251113145332.16805-4-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: T72FMKGW2B7W6PXTM7YFUCLCPKXAWNDI
X-Message-ID-Hash: T72FMKGW2B7W6PXTM7YFUCLCPKXAWNDI
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:04 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 03/18] dma-buf: detach fence ops on signal v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T72FMKGW2B7W6PXTM7YFUCLCPKXAWNDI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[3529];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,ffwll.ch,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.038];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,amd.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 1C138410A39
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMy8xMS8yMDI1IDE0OjUxLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBXaGVuIG5l
aXRoZXIgYSByZWxlYXNlIG5vciBhIHdhaXQgYmFja2VuZCBvcHMgaXMgc3BlY2lmaWVkIGl0IGlz
IHBvc3NpYmxlDQo+IHRvIGxldCB0aGUgZG1hX2ZlbmNlIGxpdmUgb24gaW5kZXBlbmRlbnRseSBv
ZiB0aGUgbW9kdWxlIHdobyBpc3N1ZWQgaXQuDQo+IA0KPiBUaGlzIG1ha2VzIGl0IHBvc3NpYmxl
IHRvIHVubG9hZCBkcml2ZXJzIGFuZCBvbmx5IHdhaXQgZm9yIGFsbCB0aGVpcg0KPiBmZW5jZXMg
dG8gc2lnbmFsLg0KPiANCj4gdjI6IGZpeCB0eXBvIGluIGNvbW1lbnQNCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gLS0t
DQo+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIHwgMTYgKysrKysrKysrKysrLS0tLQ0K
PiAgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggICB8ICA0ICsrLS0NCj4gICAyIGZpbGVzIGNo
YW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5j
ZS5jDQo+IGluZGV4IGVjMjFiZTliMDg5YS4uNzA3NDM0N2Y1MDZkIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jDQo+IEBAIC0zNzQsNiArMzc0LDE0IEBAIGludCBkbWFfZmVuY2Vfc2lnbmFsX3RpbWVz
dGFtcF9sb2NrZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsDQo+ICAgCQkJCSAgICAgICZmZW5j
ZS0+ZmxhZ3MpKSkNCj4gICAJCXJldHVybiAtRUlOVkFMOw0KPiAgIA0KPiArCS8qDQo+ICsJICog
V2hlbiBuZWl0aGVyIGEgcmVsZWFzZSBub3IgYSB3YWl0IG9wZXJhdGlvbiBpcyBzcGVjaWZpZWQg
c2V0IHRoZSBvcHMNCj4gKwkgKiBwb2ludGVyIHRvIE5VTEwgdG8gYWxsb3cgdGhlIGZlbmNlIHN0
cnVjdHVyZSB0byBiZWNvbWUgaW5kZXBlbmRlbnQNCj4gKwkgKiBmcm9tIHdobyBvcmlnaW5hbGx5
IGlzc3VlZCBpdC4NCj4gKwkgKi8NCj4gKwlpZiAoIWZlbmNlLT5vcHMtPnJlbGVhc2UgJiYgIWZl
bmNlLT5vcHMtPndhaXQpDQo+ICsJCVJDVV9JTklUX1BPSU5URVIoZmVuY2UtPm9wcywgTlVMTCk7
DQo+ICsNCj4gICAJLyogU3Rhc2ggdGhlIGNiX2xpc3QgYmVmb3JlIHJlcGxhY2luZyBpdCB3aXRo
IHRoZSB0aW1lc3RhbXAgKi8NCj4gICAJbGlzdF9yZXBsYWNlKCZmZW5jZS0+Y2JfbGlzdCwgJmNi
X2xpc3QpOw0KPiAgIA0KPiBAQCAtNTEzLDcgKzUyMSw3IEBAIGRtYV9mZW5jZV93YWl0X3RpbWVv
dXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGJvb2wgaW50ciwgc2lnbmVkIGxvbmcgdGltZW91
dCkNCj4gICAJcmN1X3JlYWRfbG9jaygpOw0KPiAgIAlvcHMgPSByY3VfZGVyZWZlcmVuY2UoZmVu
Y2UtPm9wcyk7DQo+ICAgCXRyYWNlX2RtYV9mZW5jZV93YWl0X3N0YXJ0KGZlbmNlKTsNCj4gLQlp
ZiAob3BzLT53YWl0KSB7DQo+ICsJaWYgKG9wcyAmJiBvcHMtPndhaXQpIHsNCj4gICAJCS8qDQo+
ICAgCQkgKiBJbXBsZW1lbnRpbmcgdGhlIHdhaXQgb3BzIGlzIGRlcHJlY2F0ZWQgYW5kIG5vdCBz
dXBwb3J0ZWQgZm9yDQo+ICAgCQkgKiBpc3N1ZXIgaW5kZXBlbmRlbnQgZmVuY2VzLCBzbyBpdCBp
cyBvayB0byB1c2UgdGhlIG9wcyBvdXRzaWRlDQo+IEBAIC01NzgsNyArNTg2LDcgQEAgdm9pZCBk
bWFfZmVuY2VfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqa3JlZikNCj4gICAJfQ0KPiAgIA0KPiAgIAlv
cHMgPSByY3VfZGVyZWZlcmVuY2UoZmVuY2UtPm9wcyk7DQo+IC0JaWYgKG9wcy0+cmVsZWFzZSkN
Cj4gKwlpZiAob3BzICYmIG9wcy0+cmVsZWFzZSkNCj4gICAJCW9wcy0+cmVsZWFzZShmZW5jZSk7
DQo+ICAgCWVsc2UNCj4gICAJCWRtYV9mZW5jZV9mcmVlKGZlbmNlKTsNCj4gQEAgLTYxNCw3ICs2
MjIsNyBAQCBzdGF0aWMgYm9vbCBfX2RtYV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlKQ0KPiAgIA0KPiAgIAlyY3VfcmVhZF9sb2NrKCk7DQo+ICAgCW9wcyA9
IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4gLQlpZiAoIXdhc19zZXQgJiYgb3BzLT5l
bmFibGVfc2lnbmFsaW5nKSB7DQo+ICsJaWYgKCF3YXNfc2V0ICYmIG9wcyAmJiBvcHMtPmVuYWJs
ZV9zaWduYWxpbmcpIHsNCj4gICAJCXRyYWNlX2RtYV9mZW5jZV9lbmFibGVfc2lnbmFsKGZlbmNl
KTsNCj4gICANCj4gICAJCWlmICghb3BzLT5lbmFibGVfc2lnbmFsaW5nKGZlbmNlKSkgew0KPiBA
QCAtMTAwMCw3ICsxMDA4LDcgQEAgdm9pZCBkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlLCBrdGltZV90IGRlYWRsaW5lKQ0KPiAgIA0KPiAgIAlyY3VfcmVhZF9s
b2NrKCk7DQo+ICAgCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4gLQlpZiAo
b3BzLT5zZXRfZGVhZGxpbmUgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZChmZW5jZSkpDQo+ICsJ
aWYgKG9wcyAmJiBvcHMtPnNldF9kZWFkbGluZSAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZl
bmNlKSkNCj4gICAJCW9wcy0+c2V0X2RlYWRsaW5lKGZlbmNlLCBkZWFkbGluZSk7DQo+ICAgCXJj
dV9yZWFkX3VubG9jaygpOw0KPiAgIH0NCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1h
LWZlbmNlLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+IGluZGV4IDc3ZjA3NzM1ZjU1
Ni4uZWI1N2JjYzg3MTJmIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5o
DQo+ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gQEAgLTQzNiw3ICs0MzYsNyBA
QCBkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0K
PiAgIA0KPiAgIAlyY3VfcmVhZF9sb2NrKCk7DQo+ICAgCW9wcyA9IHJjdV9kZXJlZmVyZW5jZShm
ZW5jZS0+b3BzKTsNCj4gLQlpZiAob3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNl
KSkgew0KPiArCWlmIChvcHMgJiYgb3BzLT5zaWduYWxlZCAmJiBvcHMtPnNpZ25hbGVkKGZlbmNl
KSkgew0KPiAgIAkJcmN1X3JlYWRfdW5sb2NrKCk7DQo+ICAgCQlkbWFfZmVuY2Vfc2lnbmFsX2xv
Y2tlZChmZW5jZSk7DQo+ICAgCQlyZXR1cm4gdHJ1ZTsNCj4gQEAgLTQ3Miw3ICs0NzIsNyBAQCBk
bWFfZmVuY2VfaXNfc2lnbmFsZWQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+ICAgDQo+ICAg
CXJjdV9yZWFkX2xvY2soKTsNCj4gICAJb3BzID0gcmN1X2RlcmVmZXJlbmNlKGZlbmNlLT5vcHMp
Ow0KPiAtCWlmIChvcHMtPnNpZ25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQo+ICsJ
aWYgKG9wcyAmJiBvcHMtPnNpZ25hbGVkICYmIG9wcy0+c2lnbmFsZWQoZmVuY2UpKSB7DQo+ICAg
CQlyY3VfcmVhZF91bmxvY2soKTsNCj4gICAJCWRtYV9mZW5jZV9zaWduYWwoZmVuY2UpOw0KPiAg
IAkJcmV0dXJuIHRydWU7DQoNClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaWdhbGlhLmNvbT4NCg0KUmVnYXJkcywNCg0KVHZydGtvDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
