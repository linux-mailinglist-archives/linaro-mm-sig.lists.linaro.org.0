Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UDj8BxcJ4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:06:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 96789411555
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:06:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A023A4062A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:06:45 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	by lists.linaro.org (Postfix) with ESMTPS id 092BA3F78A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 09:28:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=q2wNjGAK;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.221.42 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-42e2ba54a6fso1203284f8f.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Dec 2025 01:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1765790934; x=1766395734; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EAtcjZJ1KFt4vG40Vt/bBeVLEUo5XHFl070hFfHMjwg=;
        b=q2wNjGAKBvh0LD7VRxnOxR2FQMFDAklVhiqDUxbPlp69M5UnLcovu1HwyVXBqV4RvW
         hVBrUAhBwtF12mnA67DoBeem4MLt85uXUTpoJzaazl/dihLr6lYosU/nKGo86DuKIMru
         SrdL6zy0j0Hj1O/yMwHXtb4lavOCk/9L3dbIl4wGa16mJIQH7isgEPxXoMtTRpueFwzq
         MnyOPtBPaWWrJSNnfy7CnvA4Qs0Sbks0F7dV31rIe1/oT7Yo+yNUh+J8KIgQEYlaY8SE
         aBkJ8tJwgRWOFIKJHZPVW1wiARfb30zAyn46ACuAebV/+GuRgWjNwsYtDxRasCE6BtTe
         2FTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765790934; x=1766395734;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EAtcjZJ1KFt4vG40Vt/bBeVLEUo5XHFl070hFfHMjwg=;
        b=jmHygXWw0BG9SdVlof2B/iPR4ZON+vDhcl3I102M+ZNeTAB8ONESqP0m4aGh/sm6tJ
         kaUQURUKIQKKb94VngALYKbVo73ZNCeggeHXTZlB8vehtKENpateNfRxOdL8JRQo4NaU
         AbZrpiR+PKW/eIFLdDD+dIy8iWRl0g+LFB12DzNREvTCovkgMb34hBBV4nW2WRobxXvi
         K/x662oPtOakoIe1TYtTXbymKYuMktyQOVlx+cMD3qzW9Vfaibx202V7fYrYs1ZaN27s
         tSYHZXztQI1ZxXslhsDdSLko5+AHT07wKeHzvjGn/C+f7mWpu+PyiCMcDkTG9WDajzSV
         OTCg==
X-Forwarded-Encrypted: i=1; AJvYcCWvlKPlDAG86xQ/MgEvWzK6Nn/JyxeuC46NZQxzPG77eUg9vcbvrBoFIcsqt1HoU3IVU4gM1jbE8AbUSzN0@lists.linaro.org
X-Gm-Message-State: AOJu0YxAXIC+bBqz2sit7YhwnCLGdUlSy3vVP6JIbSTavwU/R5ONjQpF
	h6viDhp0HMCSnVHxbdwA/N2GTwX/9hDODU8Da90sURdqwDDpCPqS+eKu6FclItqkRNs=
X-Gm-Gg: AY/fxX6I6d2octDWgViXektivbvsN5Zxr6WeFEhyLj0SrLr38OBJ33r9TNg7SAVkU5n
	IaR135/lYgk7somPbWnXVxj4O5SC3lOxAeh+a0+cwacjW7cWFitnHV+mNbRbzyodAOLeIoHbR5M
	Hne4uCKkIO+WoXu69+k27NzKii7Ru6KMCNBD5kmCyRLW/Tnu0Ap144hVDlM/x1PuT96n1Tpuivm
	XvKJRJtW9zKJClYXnvjNmOY6KEwdnf32TvP/6m/iMDKk6SKVzCzq4uv+D+6d6n8pTJnua/Pth1X
	uu8V5XZI6bitrBb5fL8HpvWVtC2H+d0A8EX5Sd7BeKEbDhk/tIW2UOb7+wppQ9Et+sTq+afj/3h
	xFta8H/d0pLeiH6w1PEhmMs2VaTL9+hPZk1vpVET1EIFhN0VJPbeIVJldgLEqhHeXBa4cBLAUwm
	1h65vlGFrQAT9YI2mr0mgjDp/h0LxQLI7S
X-Google-Smtp-Source: AGHT+IFXH8wSN8XfQzRpdT4pbJByZBNo9xGfM1a4FczP/iYQS3xnPAVWQ1Lm6WcgFgjUtyCCUyZMuQ==
X-Received: by 2002:a05:6000:2883:b0:431:266:d13a with SMTP id ffacd0b85a97d-4310266d6d9mr390220f8f.48.1765790933891;
        Mon, 15 Dec 2025 01:28:53 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8b9b750sm27657113f8f.42.2025.12.15.01.28.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 01:28:53 -0800 (PST)
Message-ID: <8212f7d1-cc41-4ac0-899e-0d86efedb318@ursulin.net>
Date: Mon, 15 Dec 2025 09:28:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-12-christian.koenig@amd.com>
 <e426d618-3d6e-4d93-b6fd-4c5e1b11d9f2@ursulin.net>
 <792385a7-ac0f-4e39-a6e7-3b09bfe0b4e7@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <792385a7-ac0f-4e39-a6e7-3b09bfe0b4e7@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XBJFWKRUCZYQ2PG76PAJW3CAFDRMQQHY
X-Message-ID-Hash: XBJFWKRUCZYQ2PG76PAJW3CAFDRMQQHY
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:04:43 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 11/19] drm/amdgpu: independence for the amdgpu_fence! v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XBJFWKRUCZYQ2PG76PAJW3CAFDRMQQHY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[2934];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[ursulin.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.411];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ursulin.net:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 96789411555
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMi8xMi8yMDI1IDE1OjQ5LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAxMi8x
MS8yNSAxNjo1MywgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+Pg0KPj4gT24gMTEvMTIvMjAyNSAx
MzoxNiwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+PiBUaGlzIGFsbG93cyBhbWRncHVfZmVu
Y2VzIHRvIG91dGxpdmUgdGhlIGFtZGdwdSBtb2R1bGUuDQo+Pj4NCj4+PiB2MjogdXNlIGRtYV9m
ZW5jZV9nZXRfcmN1X3NhZmUgdG8gYmUgTlVMTCBzYWZlIGhlcmUuDQo+Pj4NCj4+PiBTaWduZWQt
b2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+Pj4g
LS0tDQo+Pj4gIMKgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jIHwg
NjMgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0NCj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3JpbmcuaMKgIHzCoCAxIC0NCj4+PiAgwqAgMiBmaWxlcyBjaGFuZ2VkLCAy
MCBpbnNlcnRpb25zKCspLCA0NCBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jDQo+Pj4gaW5kZXggYzc4NDNlMzM2MzEwLi5jNjM2
MzQ3ODAxYzEgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2ZlbmNlLmMNCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZmVuY2UuYw0KPj4+IEBAIC0xMTIsOCArMTEyLDcgQEAgaW50IGFtZGdwdV9mZW5jZV9lbWl0KHN0
cnVjdCBhbWRncHVfcmluZyAqcmluZywgc3RydWN0IGFtZGdwdV9mZW5jZSAqYWYsDQo+Pj4gIMKg
wqDCoMKgwqAgYWYtPnJpbmcgPSByaW5nOw0KPj4+ICDCoCDCoMKgwqDCoMKgIHNlcSA9ICsrcmlu
Zy0+ZmVuY2VfZHJ2LnN5bmNfc2VxOw0KPj4+IC3CoMKgwqAgZG1hX2ZlbmNlX2luaXQoZmVuY2Us
ICZhbWRncHVfZmVuY2Vfb3BzLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZy
aW5nLT5mZW5jZV9kcnYubG9jaywNCj4+PiArwqDCoMKgIGRtYV9mZW5jZV9pbml0KGZlbmNlLCAm
YW1kZ3B1X2ZlbmNlX29wcywgTlVMTCwNCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYWRldi0+ZmVuY2VfY29udGV4dCArIHJpbmctPmlkeCwgc2VxKTsNCj4+PiAgwqAgwqDC
oMKgwqDCoCBhbWRncHVfcmluZ19lbWl0X2ZlbmNlKHJpbmcsIHJpbmctPmZlbmNlX2Rydi5ncHVf
YWRkciwNCj4+PiBAQCAtNDY3LDcgKzQ2Niw2IEBAIGludCBhbWRncHVfZmVuY2VfZHJpdmVyX2lu
aXRfcmluZyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcpDQo+Pj4gIMKgwqDCoMKgwqAgdGltZXJf
c2V0dXAoJnJpbmctPmZlbmNlX2Rydi5mYWxsYmFja190aW1lciwgYW1kZ3B1X2ZlbmNlX2ZhbGxi
YWNrLCAwKTsNCj4+PiAgwqAgwqDCoMKgwqDCoCByaW5nLT5mZW5jZV9kcnYubnVtX2ZlbmNlc19t
YXNrID0gcmluZy0+bnVtX2h3X3N1Ym1pc3Npb24gKiAyIC0gMTsNCj4+PiAtwqDCoMKgIHNwaW5f
bG9ja19pbml0KCZyaW5nLT5mZW5jZV9kcnYubG9jayk7DQo+Pj4gIMKgwqDCoMKgwqAgcmluZy0+
ZmVuY2VfZHJ2LmZlbmNlcyA9IGtjYWxsb2MocmluZy0+bnVtX2h3X3N1Ym1pc3Npb24gKiAyLCBz
aXplb2Yodm9pZCAqKSwNCj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgR0ZQX0tFUk5FTCk7DQo+Pj4gIMKgIEBAIC02NTQsMTYgKzY1MiwyMCBAQCB2b2lk
IGFtZGdwdV9mZW5jZV9kcml2ZXJfc2V0X2Vycm9yKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywg
aW50IGVycm9yKQ0KPj4+ICDCoMKgwqDCoMKgIHN0cnVjdCBhbWRncHVfZmVuY2VfZHJpdmVyICpk
cnYgPSAmcmluZy0+ZmVuY2VfZHJ2Ow0KPj4+ICDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgZmxh
Z3M7DQo+Pj4gIMKgIC3CoMKgwqAgc3Bpbl9sb2NrX2lycXNhdmUoJmRydi0+bG9jaywgZmxhZ3Mp
Ow0KPj4+ICvCoMKgwqAgcmN1X3JlYWRfbG9jaygpOw0KPj4+ICDCoMKgwqDCoMKgIGZvciAodW5z
aWduZWQgaW50IGkgPSAwOyBpIDw9IGRydi0+bnVtX2ZlbmNlc19tYXNrOyArK2kpIHsNCj4+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KPj4+ICDCoCAtwqDC
oMKgwqDCoMKgwqAgZmVuY2UgPSByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGRydi0+ZmVuY2Vz
W2ldLA0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBsb2NrZGVwX2lzX2hlbGQoJmRydi0+bG9jaykpOw0KPj4+IC3CoMKgwqDCoMKgwqDCoCBp
ZiAoZmVuY2UgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQoZmVuY2UpKQ0KPj4+ICvC
oMKgwqDCoMKgwqDCoCBmZW5jZSA9IGRtYV9mZW5jZV9nZXRfcmN1KGRydi0+ZmVuY2VzW2ldKTsN
Cj4+DQo+PiBkbWFfZmVuY2VfZ2V0X3JjdSBpcyBub3Qgc2FmZSBhZ2FpbnN0IHBhc3NpbmcgYSBO
VUxMIGZlbmNlIGluLCB3aGlsZSB0aGUgZXhpc3RpbmcgY29kZSBtYWtlcyBpdCBsb29rIGxpa2Ug
ZHJ2LT5mZW5jZVtdIHNsb3QgY2FuIGNvbnRhaW4gTlVMTCBhdCB0aGlzIHBvaW50Pw0KPj4NCj4+
IGFtZGdwdV9mZW5jZV9wcm9jZXNzKCkgaXMgdGhlIHBsYWNlIHdoaWNoIGNhbiBOVUxMIHRoZSBz
bG90cz8gSXJxIGNvbnRleHQ/IFdoeSBpcyB0aGF0IHNhZmUgd2l0aCBubyByZWZlcmVuY2UgaGVs
ZCBmcm9tIGNsZWFyaW5nIHRoZSBzbG90IHRvIG9wZXJhdGluZyBvbiB0aGUgZmVuY2U/DQo+IA0K
PiBUaGUgc2xvdHMgYXJlIG5ldmVyIGNsZWFyZWQuIEl0IGNhbiBvbmx5IGJlIHRoYXQgdGhleSBh
cmUgTlVMTCB3aGVuIHRoZSBkcml2ZXIgaXMgbG9hZGVkLg0KDQpBcmUgeW91IHN1cmU/DQoNCmJv
b2wgYW1kZ3B1X2ZlbmNlX3Byb2Nlc3Moc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nKQ0Kew0KLi4u
DQoJCXB0ciA9ICZkcnYtPmZlbmNlc1tsYXN0X3NlcV07DQoNCgkJLyogVGhlcmUgaXMgYWx3YXlz
IGV4YWN0bHkgb25lIHRocmVhZCBzaWduYWxpbmcgdGhpcyBmZW5jZSBzbG90ICovDQoJCWZlbmNl
ID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZCgqcHRyLCAxKTsNCgkJUkNVX0lOSVRfUE9JTlRF
UigqcHRyLCBOVUxMKTsNCg0KVGhlIGFib3ZlIGxvb2tzIGxpa2UgaXQgY2FuIHNldCBzbG90cyB0
byBOVUxMLiBBdCBsZWFzdCBpZiB0aGUgY29kZSBpcyANCnJlYWNoYWJsZS4gSSBkb24ndCBjbGFp
bSB0aGF0IGl0IGlzIGJlY2F1c2UgSSBjb3VsZCBub3QgZWFzaWx5IGZvbGxvdyANCnRoZSBsb2dp
YyBiZWhpbmQgdGhlIGhpZ2ggbGV2ZWwgc2NoZW1lIGZlbmNlIGRyaXZlciBhbmQgYXNzb2NpYXRl
ZCBzdGF0ZSANCmltcGxlbWVudHMuDQoNCj4gSSd2ZSBzd2l0Y2hlZCBvdmVyIHRvIGRtYV9mZW5j
ZV9nZXRfcmN1X3NhZmUoKSB3aGVyZSBhcHByb3ByaWF0ZWQuDQoNCllvdSBtZWFuIGJlbG93IGlu
IGFtZGdwdV9mZW5jZV9kcml2ZXJfZ3VpbHR5X2ZvcmNlX2NvbXBsZXRpb24/IEluIA0KYW1kZ3B1
X2ZlbmNlX2RyaXZlcl9zZXRfZXJyb3IgeW91IGFyZSBzdXJlIGl0IGlzIG5vdCBuZWVkZWQgc28g
dGhlIA0KZXhpc3RpbmcgY29kZSBpcyB0b28gY2FyZWZ1bD8NCg0KUmVnYXJkcywNCg0KVHZydGtv
DQoNCj4+DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmICghZmVuY2UpDQo+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29udGludWU7DQo+Pj4gKw0KPj4+ICvCoMKgwqDCoMKgwqDCoCBkbWFfZmVu
Y2VfbG9ja19pcnFzYXZlKGZlbmNlLCBmbGFncyk7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmICgh
ZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChmZW5jZSkpDQo+Pj4gIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9zZXRfZXJyb3IoZmVuY2UsIGVycm9yKTsNCj4+PiArwqDC
oMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLCBmbGFncyk7DQo+
Pj4gIMKgwqDCoMKgwqAgfQ0KPj4+IC3CoMKgwqAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZHJ2
LT5sb2NrLCBmbGFncyk7DQo+Pj4gK8KgwqDCoCByY3VfcmVhZF91bmxvY2soKTsNCj4+PiAgwqAg
fQ0KPj4+ICDCoCDCoCAvKioNCj4+PiBAQCAtNzE0LDE2ICs3MTYsMTkgQEAgdm9pZCBhbWRncHVf
ZmVuY2VfZHJpdmVyX2d1aWx0eV9mb3JjZV9jb21wbGV0aW9uKHN0cnVjdCBhbWRncHVfZmVuY2Ug
KmFmKQ0KPj4+ICDCoMKgwqDCoMKgIHNlcSA9IHJpbmctPmZlbmNlX2Rydi5zeW5jX3NlcSAmIHJp
bmctPmZlbmNlX2Rydi5udW1fZmVuY2VzX21hc2s7DQo+Pj4gIMKgIMKgwqDCoMKgwqAgLyogbWFy
ayBhbGwgZmVuY2VzIGZyb20gdGhlIGd1aWx0eSBjb250ZXh0IHdpdGggYW4gZXJyb3IgKi8NCj4+
PiAtwqDCoMKgIHNwaW5fbG9ja19pcnFzYXZlKCZyaW5nLT5mZW5jZV9kcnYubG9jaywgZmxhZ3Mp
Ow0KPj4+ICvCoMKgwqAgcmN1X3JlYWRfbG9jaygpOw0KPj4+ICDCoMKgwqDCoMKgIGRvIHsNCj4+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgIGxhc3Rfc2VxKys7DQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDC
oCBsYXN0X3NlcSAmPSByaW5nLT5mZW5jZV9kcnYubnVtX2ZlbmNlc19tYXNrOw0KPj4+ICDCoCDC
oMKgwqDCoMKgwqDCoMKgwqAgcHRyID0gJnJpbmctPmZlbmNlX2Rydi5mZW5jZXNbbGFzdF9zZXFd
Ow0KPj4+IC3CoMKgwqDCoMKgwqDCoCByY3VfcmVhZF9sb2NrKCk7DQo+Pj4gLcKgwqDCoMKgwqDC
oMKgIHVucHJvY2Vzc2VkID0gcmN1X2RlcmVmZXJlbmNlKCpwdHIpOw0KPj4+ICvCoMKgwqDCoMKg
wqDCoCB1bnByb2Nlc3NlZCA9IGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUocHRyKTsNCj4+DQo+PiBT
aW1pbGFyIGNvbmNlcm4gbGlrZSB0aGUgYWJvdmUuDQo+Pg0KPj4gUmVnYXJkcywNCj4+DQo+PiBU
dnJ0a28NCj4+PiArDQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmICghdW5wcm9jZXNzZWQpDQo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7DQo+Pj4gIMKgIC3CoMKgwqDCoMKgwqDC
oCBpZiAodW5wcm9jZXNzZWQgJiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQodW5wcm9j
ZXNzZWQpKSB7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9sb2NrX2lycXNhdmUodW5w
cm9jZXNzZWQsIGZsYWdzKTsNCj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGRtYV9mZW5jZV9pc19z
aWduYWxlZF9sb2NrZWQodW5wcm9jZXNzZWQpKSB7DQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGZlbmNlID0gY29udGFpbmVyX29mKHVucHJvY2Vzc2VkLCBzdHJ1Y3QgYW1kZ3B1X2Zl
bmNlLCBiYXNlKTsNCj4+PiAgwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGZlbmNl
ID09IGFmKQ0KPj4+IEBAIC03MzEsOSArNzM2LDEwIEBAIHZvaWQgYW1kZ3B1X2ZlbmNlX2RyaXZl
cl9ndWlsdHlfZm9yY2VfY29tcGxldGlvbihzdHJ1Y3QgYW1kZ3B1X2ZlbmNlICphZikNCj4+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZWxzZSBpZiAoZmVuY2UtPmNvbnRleHQgPT0gYWYt
PmNvbnRleHQpDQo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1hX2Zl
bmNlX3NldF9lcnJvcigmZmVuY2UtPmJhc2UsIC1FQ0FOQ0VMRUQpOw0KPj4+ICDCoMKgwqDCoMKg
wqDCoMKgwqAgfQ0KPj4+IC3CoMKgwqDCoMKgwqDCoCByY3VfcmVhZF91bmxvY2soKTsNCj4+PiAr
wqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKHVucHJvY2Vzc2VkLCBm
bGFncyk7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9wdXQodW5wcm9jZXNzZWQpOw0K
Pj4+ICDCoMKgwqDCoMKgIH0gd2hpbGUgKGxhc3Rfc2VxICE9IHNlcSk7DQo+Pj4gLcKgwqDCoCBz
cGluX3VubG9ja19pcnFyZXN0b3JlKCZyaW5nLT5mZW5jZV9kcnYubG9jaywgZmxhZ3MpOw0KPj4+
ICvCoMKgwqAgcmN1X3JlYWRfdW5sb2NrKCk7DQo+Pj4gIMKgwqDCoMKgwqAgLyogc2lnbmFsIHRo
ZSBndWlsdHkgZmVuY2UgKi8NCj4+PiAgwqDCoMKgwqDCoCBhbWRncHVfZmVuY2Vfd3JpdGUocmlu
ZywgKHUzMilhZi0+YmFzZS5zZXFubyk7DQo+Pj4gIMKgwqDCoMKgwqAgYW1kZ3B1X2ZlbmNlX3By
b2Nlc3MocmluZyk7DQo+Pj4gQEAgLTgyMywzOSArODI5LDEwIEBAIHN0YXRpYyBib29sIGFtZGdw
dV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQo+Pj4gIMKgwqDC
oMKgwqAgcmV0dXJuIHRydWU7DQo+Pj4gIMKgIH0NCj4+PiAgwqAgLS8qKg0KPj4+IC0gKiBhbWRn
cHVfZmVuY2VfZnJlZSAtIGZyZWUgdXAgdGhlIGZlbmNlIG1lbW9yeQ0KPj4+IC0gKg0KPj4+IC0g
KiBAcmN1OiBSQ1UgY2FsbGJhY2sgaGVhZA0KPj4+IC0gKg0KPj4+IC0gKiBGcmVlIHVwIHRoZSBm
ZW5jZSBtZW1vcnkgYWZ0ZXIgdGhlIFJDVSBncmFjZSBwZXJpb2QuDQo+Pj4gLSAqLw0KPj4+IC1z
dGF0aWMgdm9pZCBhbWRncHVfZmVuY2VfZnJlZShzdHJ1Y3QgcmN1X2hlYWQgKnJjdSkNCj4+PiAt
ew0KPj4+IC3CoMKgwqAgc3RydWN0IGRtYV9mZW5jZSAqZiA9IGNvbnRhaW5lcl9vZihyY3UsIHN0
cnVjdCBkbWFfZmVuY2UsIHJjdSk7DQo+Pj4gLQ0KPj4+IC3CoMKgwqAgLyogZnJlZSBmZW5jZV9z
bGFiIGlmIGl0J3Mgc2VwYXJhdGVkIGZlbmNlKi8NCj4+PiAtwqDCoMKgIGtmcmVlKHRvX2FtZGdw
dV9mZW5jZShmKSk7DQo+Pj4gLX0NCj4+PiAtDQo+Pj4gLS8qKg0KPj4+IC0gKiBhbWRncHVfZmVu
Y2VfcmVsZWFzZSAtIGNhbGxiYWNrIHRoYXQgZmVuY2UgY2FuIGJlIGZyZWVkDQo+Pj4gLSAqDQo+
Pj4gLSAqIEBmOiBmZW5jZQ0KPj4+IC0gKg0KPj4+IC0gKiBUaGlzIGZ1bmN0aW9uIGlzIGNhbGxl
ZCB3aGVuIHRoZSByZWZlcmVuY2UgY291bnQgYmVjb21lcyB6ZXJvLg0KPj4+IC0gKiBJdCBqdXN0
IFJDVSBzY2hlZHVsZXMgZnJlZWluZyB1cCB0aGUgZmVuY2UuDQo+Pj4gLSAqLw0KPj4+IC1zdGF0
aWMgdm9pZCBhbWRncHVfZmVuY2VfcmVsZWFzZShzdHJ1Y3QgZG1hX2ZlbmNlICpmKQ0KPj4+IC17
DQo+Pj4gLcKgwqDCoCBjYWxsX3JjdSgmZi0+cmN1LCBhbWRncHVfZmVuY2VfZnJlZSk7DQo+Pj4g
LX0NCj4+PiAtDQo+Pj4gIMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyBhbWRn
cHVfZmVuY2Vfb3BzID0gew0KPj4+ICDCoMKgwqDCoMKgIC5nZXRfZHJpdmVyX25hbWUgPSBhbWRn
cHVfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLA0KPj4+ICDCoMKgwqDCoMKgIC5nZXRfdGltZWxpbmVf
bmFtZSA9IGFtZGdwdV9mZW5jZV9nZXRfdGltZWxpbmVfbmFtZSwNCj4+PiAgwqDCoMKgwqDCoCAu
ZW5hYmxlX3NpZ25hbGluZyA9IGFtZGdwdV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nLA0KPj4+IC3C
oMKgwqAgLnJlbGVhc2UgPSBhbWRncHVfZmVuY2VfcmVsZWFzZSwNCj4+PiAgwqAgfTsNCj4+PiAg
wqAgwqAgLyoNCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X3JpbmcuaCBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9yaW5nLmgNCj4+
PiBpbmRleCA3YTI3YzZjNGJiNDQuLjljYmY2MzQ1NDAwNCAxMDA2NDQNCj4+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcmluZy5oDQo+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuaA0KPj4+IEBAIC0xMjUsNyArMTI1LDYgQEAg
c3RydWN0IGFtZGdwdV9mZW5jZV9kcml2ZXIgew0KPj4+ICDCoMKgwqDCoMKgIHVuc2lnbmVkwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpcnFfdHlwZTsNCj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgdGlt
ZXJfbGlzdMKgwqDCoMKgwqDCoMKgIGZhbGxiYWNrX3RpbWVyOw0KPj4+ICDCoMKgwqDCoMKgIHVu
c2lnbmVkwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudW1fZmVuY2VzX21hc2s7DQo+Pj4gLcKgwqDC
oCBzcGlubG9ja190wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsb2NrOw0KPj4+ICDCoMKgwqDCoMKg
IHN0cnVjdCBkbWFfZmVuY2XCoMKgwqDCoMKgwqDCoCAqKmZlbmNlczsNCj4+PiAgwqAgfTsNCj4+
PiAgICANCj4+DQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
