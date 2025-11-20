Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEWcESj/4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:24:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E1106410A5E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:24:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBA24404EE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:24:22 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id 48F893F909
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 14:42:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=K0YEpt6V;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.208.41 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-640c6577120so1631188a12.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 06:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1763649733; x=1764254533; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=khBR6eSNf/QmSuc9SlSCWE0udmdJHBDaQ2oPnmmJpDQ=;
        b=K0YEpt6VT45HScR9JawA5+Q82GLkMLXmy8RBBTNTzk4yzQth7jE/k1v/rr81I1f8QZ
         EGg+k8MNncs7lNTUyroszlHlT8/+cIQxtiiUAHSppvGcESYaCuJLsLcVLTWhCOlZSS0S
         hZnqGQCIITokc6ESlfm7maP2GCdutz7AwArBbLat8p6Udjuaxl5ccihrgKynPr60CerG
         KIL3WGyM+J438vPEfsK+xW+2GEjryf5pEukXFCvllUm1nbTn3XhKaAXnEcK6SL4ZwEuS
         npn+7yfMEgbamN4IL/L2kC8aHE8xBPo9uB6MoH8b3S9HcjzGOiPtM8sKIOrYCjwNdh/h
         HD7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763649733; x=1764254533;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=khBR6eSNf/QmSuc9SlSCWE0udmdJHBDaQ2oPnmmJpDQ=;
        b=hpOP+lMQ4FdwaTODFd55+9JegIsIj4CNCA3TdCLU2nwJCD9HvY4vye3LMymfZWP/SG
         B53JTJbSafs8/PH/ExEYGG9GXsT7ZlgQP7hhhjD7g2Du3ka0vwxSXyeEXO8VQW9wan63
         ILZCBUTszw4ZuEICvmYav2PqAi7uy/8Ldp131lHpKGJSxvnZvRKNIrdzUN1yB6jsoTvP
         gWuS/NWE//tyqpek5L8dXeVGZRt5GNRZpWJU3aMyH45Fwg0xVHBXGvrDujM3soScf9pi
         +YkaIH7LnDrWjEBWaxgKEyWFiuvDY8QICkY9T4oXSq7tCTTAp2ANOhcaOc98QgIB6a2l
         x1Qw==
X-Forwarded-Encrypted: i=1; AJvYcCXcqCYlBiCtPZp4bYtquNB8o5pQIzShdaAC20tgn3oBwdVUbN8lEwPG+8IKWUYBXo4MfS63xqkf5YFpU+FJ@lists.linaro.org
X-Gm-Message-State: AOJu0Yz1R+pdbCGFna6Cf1jH+2usAkkMj/du4RZv9j9Jn1akhstkaj+a
	8V3GDkplBc8eOu8solSOaBX9dPg+TvHqTK51qY2DK48kMjar6Q13OtcQJskprtG0RZ0=
X-Gm-Gg: ASbGncsjg5OD+ZnKWvuf++wPHqb+wvqrDcaKVAnpjpkR/q5R1Z8/S2CfPtpNfFNhses
	+R7Imd90nhWieChc55RQavFnKI+GGQTX4pk/SBzr0pTfY6mb2/B0i1Vpzsa+/EvjJJQsTSFDNxm
	J/F8Rh0c+FZcFCijdqSGmnzNOejKf1nOG4YTsfrUN9Uk63c1wWLhwxBLTJZHPLRon9s96m/v78R
	YHYPbFmB0DlhWfReJyOUH4FVLWLiv84Rrj41Np6Pis14b7q5lGjpIgKlCTOWXiT2B9S0SHK+BAN
	zQTo3LB/RxAr+2dtmFpojRBz/whkImJ7ZaTsXTj32QgdtZcFRxwbHfTXqSlFRAa4tl1I92gAux4
	l4eLnS61I8lTvQzwxl1Ai+MFBxVeWvISylvgnGCMrH9rkyoFjRk/p8a/0Sd48wjVTu6EidxGyHk
	g1PyKY0fmTCyc3VWVOBPaLrXGcHppQkCNoyUFu30k/Du4=
X-Google-Smtp-Source: AGHT+IGSe52x3WwscN4pPeTMXlXGa4bP0yNsZ98l/WZuYWDCuxOODGDX3LXA9XEr/HIuIeHAYgSlVw==
X-Received: by 2002:a17:907:7293:b0:b73:5acd:465e with SMTP id a640c23a62f3a-b7655485cc4mr313158366b.11.1763649732423;
        Thu, 20 Nov 2025 06:42:12 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7654ff3987sm222731066b.48.2025.11.20.06.42.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 06:42:11 -0800 (PST)
Message-ID: <a58fd870-30ca-44e0-b9f8-df5a34889fce@ursulin.net>
Date: Thu, 20 Nov 2025 14:42:10 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-11-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251113145332.16805-11-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EF5WGYVEP2CAVHWZX246UD3U4IZA5IO7
X-Message-ID-Hash: EF5WGYVEP2CAVHWZX246UD3U4IZA5IO7
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:06 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 10/18] drm/amdgpu: independence for the amdgpu_fence!
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EF5WGYVEP2CAVHWZX246UD3U4IZA5IO7/>
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
	DATE_IN_PAST(1.00)[3528];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,ffwll.ch,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.059];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	SUBJECT_ENDS_EXCLAIM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,amd.com:email]
X-Rspamd-Queue-Id: E1106410A5E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMy8xMS8yMDI1IDE0OjUxLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBUaGlzIHNo
b3VsZCBhbGxvdyBhbWRncHVfZmVuY2VzIHRvIG91dGxpdmUgdGhlIGFtZGdwdSBtb2R1bGUuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+DQo+IC0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5j
ZS5jIHwgNjMgKysrKysrKy0tLS0tLS0tLS0tLS0tLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfcmluZy5oICB8ICAxIC0NCj4gICAyIGZpbGVzIGNoYW5nZWQsIDIwIGlu
c2VydGlvbnMoKyksIDQ0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2ZlbmNlLmMNCj4gaW5kZXggYzc4NDNlMzM2MzEwLi45OTBmY2JiZTkwYTAg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jDQo+IEBA
IC0xMTIsOCArMTEyLDcgQEAgaW50IGFtZGdwdV9mZW5jZV9lbWl0KHN0cnVjdCBhbWRncHVfcmlu
ZyAqcmluZywgc3RydWN0IGFtZGdwdV9mZW5jZSAqYWYsDQo+ICAgCWFmLT5yaW5nID0gcmluZzsN
Cj4gICANCj4gICAJc2VxID0gKytyaW5nLT5mZW5jZV9kcnYuc3luY19zZXE7DQo+IC0JZG1hX2Zl
bmNlX2luaXQoZmVuY2UsICZhbWRncHVfZmVuY2Vfb3BzLA0KPiAtCQkgICAgICAgJnJpbmctPmZl
bmNlX2Rydi5sb2NrLA0KPiArCWRtYV9mZW5jZV9pbml0KGZlbmNlLCAmYW1kZ3B1X2ZlbmNlX29w
cywgTlVMTCwNCj4gICAJCSAgICAgICBhZGV2LT5mZW5jZV9jb250ZXh0ICsgcmluZy0+aWR4LCBz
ZXEpOw0KPiAgIA0KPiAgIAlhbWRncHVfcmluZ19lbWl0X2ZlbmNlKHJpbmcsIHJpbmctPmZlbmNl
X2Rydi5ncHVfYWRkciwNCj4gQEAgLTQ2Nyw3ICs0NjYsNiBAQCBpbnQgYW1kZ3B1X2ZlbmNlX2Ry
aXZlcl9pbml0X3Jpbmcoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nKQ0KPiAgIAl0aW1lcl9zZXR1
cCgmcmluZy0+ZmVuY2VfZHJ2LmZhbGxiYWNrX3RpbWVyLCBhbWRncHVfZmVuY2VfZmFsbGJhY2ss
IDApOw0KPiAgIA0KPiAgIAlyaW5nLT5mZW5jZV9kcnYubnVtX2ZlbmNlc19tYXNrID0gcmluZy0+
bnVtX2h3X3N1Ym1pc3Npb24gKiAyIC0gMTsNCj4gLQlzcGluX2xvY2tfaW5pdCgmcmluZy0+ZmVu
Y2VfZHJ2LmxvY2spOw0KPiAgIAlyaW5nLT5mZW5jZV9kcnYuZmVuY2VzID0ga2NhbGxvYyhyaW5n
LT5udW1faHdfc3VibWlzc2lvbiAqIDIsIHNpemVvZih2b2lkICopLA0KPiAgIAkJCQkJIEdGUF9L
RVJORUwpOw0KPiAgIA0KPiBAQCAtNjU0LDE2ICs2NTIsMjAgQEAgdm9pZCBhbWRncHVfZmVuY2Vf
ZHJpdmVyX3NldF9lcnJvcihzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIGludCBlcnJvcikNCj4g
ICAJc3RydWN0IGFtZGdwdV9mZW5jZV9kcml2ZXIgKmRydiA9ICZyaW5nLT5mZW5jZV9kcnY7DQo+
ICAgCXVuc2lnbmVkIGxvbmcgZmxhZ3M7DQo+ICAgDQo+IC0Jc3Bpbl9sb2NrX2lycXNhdmUoJmRy
di0+bG9jaywgZmxhZ3MpOw0KPiArCXJjdV9yZWFkX2xvY2soKTsNCj4gICAJZm9yICh1bnNpZ25l
ZCBpbnQgaSA9IDA7IGkgPD0gZHJ2LT5udW1fZmVuY2VzX21hc2s7ICsraSkgew0KPiAgIAkJc3Ry
dWN0IGRtYV9mZW5jZSAqZmVuY2U7DQo+ICAgDQo+IC0JCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNl
X3Byb3RlY3RlZChkcnYtPmZlbmNlc1tpXSwNCj4gLQkJCQkJCSAgbG9ja2RlcF9pc19oZWxkKCZk
cnYtPmxvY2spKTsNCj4gLQkJaWYgKGZlbmNlICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9j
a2VkKGZlbmNlKSkNCj4gKwkJZmVuY2UgPSBkbWFfZmVuY2VfZ2V0X3JjdShkcnYtPmZlbmNlc1tp
XSk7DQo+ICsJCWlmICghZmVuY2UpDQo+ICsJCQljb250aW51ZTsNCj4gKw0KPiArCQlkbWFfZmVu
Y2VfbG9ja19pcnFzYXZlKGZlbmNlLCBmbGFncyk7DQo+ICsJCWlmICghZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkX2xvY2tlZChmZW5jZSkpDQo+ICAgCQkJZG1hX2ZlbmNlX3NldF9lcnJvcihmZW5jZSwg
ZXJyb3IpOw0KPiArCQlkbWFfZmVuY2VfdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UsIGZsYWdzKTsN
Cj4gICAJfQ0KPiAtCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRydi0+bG9jaywgZmxhZ3MpOw0K
PiArCXJjdV9yZWFkX3VubG9jaygpOw0KPiAgIH0NCj4gICANCj4gICAvKioNCj4gQEAgLTcxNCwx
NiArNzE2LDE5IEBAIHZvaWQgYW1kZ3B1X2ZlbmNlX2RyaXZlcl9ndWlsdHlfZm9yY2VfY29tcGxl
dGlvbihzdHJ1Y3QgYW1kZ3B1X2ZlbmNlICphZikNCj4gICAJc2VxID0gcmluZy0+ZmVuY2VfZHJ2
LnN5bmNfc2VxICYgcmluZy0+ZmVuY2VfZHJ2Lm51bV9mZW5jZXNfbWFzazsNCj4gICANCj4gICAJ
LyogbWFyayBhbGwgZmVuY2VzIGZyb20gdGhlIGd1aWx0eSBjb250ZXh0IHdpdGggYW4gZXJyb3Ig
Ki8NCj4gLQlzcGluX2xvY2tfaXJxc2F2ZSgmcmluZy0+ZmVuY2VfZHJ2LmxvY2ssIGZsYWdzKTsN
Cj4gKwlyY3VfcmVhZF9sb2NrKCk7DQo+ICAgCWRvIHsNCj4gICAJCWxhc3Rfc2VxKys7DQo+ICAg
CQlsYXN0X3NlcSAmPSByaW5nLT5mZW5jZV9kcnYubnVtX2ZlbmNlc19tYXNrOw0KPiAgIA0KPiAg
IAkJcHRyID0gJnJpbmctPmZlbmNlX2Rydi5mZW5jZXNbbGFzdF9zZXFdOw0KPiAtCQlyY3VfcmVh
ZF9sb2NrKCk7DQo+IC0JCXVucHJvY2Vzc2VkID0gcmN1X2RlcmVmZXJlbmNlKCpwdHIpOw0KPiAr
CQl1bnByb2Nlc3NlZCA9IGRtYV9mZW5jZV9nZXRfcmN1KCpwdHIpOw0KDQpCb3RoIGhlcmUgYW5k
IGluIGFtZGdwdV9mZW5jZV9kcml2ZXJfc2V0X2Vycm9yLCB0aGUgb2xkL2V4aXN0aW5nIGNvZGUg
DQptYWtlcyBtZSB0aGluayB0aGUgZmV0Y2hlZCBmZW5jZSBwb2ludGVyIGNhbiBiZSBOVUxMICh0
aGUgImlmIA0KKHVucHJvY2Vzc2VzICYmIC4uIGJlbG93IikuIElmIHRydWUgdGhlbiBpdCBuZWVk
cyB0byBiZSBjaGVja2VkIGJlZm9yZSANCmRtYV9mZW5jZV9nZXRfcmN1IGFuZCBhZnRlci4NCg0K
QWx0aG91Z2ggSSBhbSBhIGJpdCBjb25mdXNlZCB3aXRoIHRoZSBSQ1UgdXNhZ2UgaGVyZSBpbiBn
ZW5lcmFsLiBGb3IgDQpleGFtcGxlIHN0cnVjdCBhbWRncHVfZmVuY2VfZHJpdmVyLT5mZW5jZXMg
aXMgbm90IHJjdSBhbm5vdGF0ZWQgc28gd2hhdCANCmlzIGFjdHVhbGx5IGd1YXJkZWQgYnkgUkNV
PyBQb2ludGVycyBpbiB0aGUgYXJyYXkgb3IgZmVuY2Ugb2JqZWN0cyANCnBvaW50ZXIgdG8gYnkg
dGhvc2UgcG9pbnRlcnM/DQoNClJlZ2FyZHMsDQoNClR2cnRrbw0KDQo+ICsNCj4gKwkJaWYgKCF1
bnByb2Nlc3NlZCkNCj4gKwkJCWNvbnRpbnVlOw0KPiAgIA0KPiAtCQlpZiAodW5wcm9jZXNzZWQg
JiYgIWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQodW5wcm9jZXNzZWQpKSB7DQo+ICsJCWRt
YV9mZW5jZV9sb2NrX2lycXNhdmUodW5wcm9jZXNzZWQsIGZsYWdzKTsNCj4gKwkJaWYgKGRtYV9m
ZW5jZV9pc19zaWduYWxlZF9sb2NrZWQodW5wcm9jZXNzZWQpKSB7DQo+ICAgCQkJZmVuY2UgPSBj
b250YWluZXJfb2YodW5wcm9jZXNzZWQsIHN0cnVjdCBhbWRncHVfZmVuY2UsIGJhc2UpOw0KPiAg
IA0KPiAgIAkJCWlmIChmZW5jZSA9PSBhZikNCj4gQEAgLTczMSw5ICs3MzYsMTAgQEAgdm9pZCBh
bWRncHVfZmVuY2VfZHJpdmVyX2d1aWx0eV9mb3JjZV9jb21wbGV0aW9uKHN0cnVjdCBhbWRncHVf
ZmVuY2UgKmFmKQ0KPiAgIAkJCWVsc2UgaWYgKGZlbmNlLT5jb250ZXh0ID09IGFmLT5jb250ZXh0
KQ0KPiAgIAkJCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZmZW5jZS0+YmFzZSwgLUVDQU5DRUxFRCk7
DQo+ICAgCQl9DQo+IC0JCXJjdV9yZWFkX3VubG9jaygpOw0KPiArCQlkbWFfZmVuY2VfdW5sb2Nr
X2lycXJlc3RvcmUodW5wcm9jZXNzZWQsIGZsYWdzKTsNCj4gKwkJZG1hX2ZlbmNlX3B1dCh1bnBy
b2Nlc3NlZCk7DQo+ICAgCX0gd2hpbGUgKGxhc3Rfc2VxICE9IHNlcSk7DQo+IC0Jc3Bpbl91bmxv
Y2tfaXJxcmVzdG9yZSgmcmluZy0+ZmVuY2VfZHJ2LmxvY2ssIGZsYWdzKTsNCj4gKwlyY3VfcmVh
ZF91bmxvY2soKTsNCj4gICAJLyogc2lnbmFsIHRoZSBndWlsdHkgZmVuY2UgKi8NCj4gICAJYW1k
Z3B1X2ZlbmNlX3dyaXRlKHJpbmcsICh1MzIpYWYtPmJhc2Uuc2Vxbm8pOw0KPiAgIAlhbWRncHVf
ZmVuY2VfcHJvY2VzcyhyaW5nKTsNCj4gQEAgLTgyMywzOSArODI5LDEwIEBAIHN0YXRpYyBib29s
IGFtZGdwdV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQo+ICAg
CXJldHVybiB0cnVlOw0KPiAgIH0NCj4gICANCj4gLS8qKg0KPiAtICogYW1kZ3B1X2ZlbmNlX2Zy
ZWUgLSBmcmVlIHVwIHRoZSBmZW5jZSBtZW1vcnkNCj4gLSAqDQo+IC0gKiBAcmN1OiBSQ1UgY2Fs
bGJhY2sgaGVhZA0KPiAtICoNCj4gLSAqIEZyZWUgdXAgdGhlIGZlbmNlIG1lbW9yeSBhZnRlciB0
aGUgUkNVIGdyYWNlIHBlcmlvZC4NCj4gLSAqLw0KPiAtc3RhdGljIHZvaWQgYW1kZ3B1X2ZlbmNl
X2ZyZWUoc3RydWN0IHJjdV9oZWFkICpyY3UpDQo+IC17DQo+IC0Jc3RydWN0IGRtYV9mZW5jZSAq
ZiA9IGNvbnRhaW5lcl9vZihyY3UsIHN0cnVjdCBkbWFfZmVuY2UsIHJjdSk7DQo+IC0NCj4gLQkv
KiBmcmVlIGZlbmNlX3NsYWIgaWYgaXQncyBzZXBhcmF0ZWQgZmVuY2UqLw0KPiAtCWtmcmVlKHRv
X2FtZGdwdV9mZW5jZShmKSk7DQo+IC19DQo+IC0NCj4gLS8qKg0KPiAtICogYW1kZ3B1X2ZlbmNl
X3JlbGVhc2UgLSBjYWxsYmFjayB0aGF0IGZlbmNlIGNhbiBiZSBmcmVlZA0KPiAtICoNCj4gLSAq
IEBmOiBmZW5jZQ0KPiAtICoNCj4gLSAqIFRoaXMgZnVuY3Rpb24gaXMgY2FsbGVkIHdoZW4gdGhl
IHJlZmVyZW5jZSBjb3VudCBiZWNvbWVzIHplcm8uDQo+IC0gKiBJdCBqdXN0IFJDVSBzY2hlZHVs
ZXMgZnJlZWluZyB1cCB0aGUgZmVuY2UuDQo+IC0gKi8NCj4gLXN0YXRpYyB2b2lkIGFtZGdwdV9m
ZW5jZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQo+IC17DQo+IC0JY2FsbF9yY3UoJmYt
PnJjdSwgYW1kZ3B1X2ZlbmNlX2ZyZWUpOw0KPiAtfQ0KPiAtDQo+ICAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkbWFfZmVuY2Vfb3BzIGFtZGdwdV9mZW5jZV9vcHMgPSB7DQo+ICAgCS5nZXRfZHJpdmVy
X25hbWUgPSBhbWRncHVfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLA0KPiAgIAkuZ2V0X3RpbWVsaW5l
X25hbWUgPSBhbWRncHVfZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUsDQo+ICAgCS5lbmFibGVfc2ln
bmFsaW5nID0gYW1kZ3B1X2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcsDQo+IC0JLnJlbGVhc2UgPSBh
bWRncHVfZmVuY2VfcmVsZWFzZSwNCj4gICB9Ow0KPiAgIA0KPiAgIC8qDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcmluZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3JpbmcuaA0KPiBpbmRleCA3YTI3YzZjNGJiNDQuLjljYmY2
MzQ1NDAwNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X3JpbmcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcmluZy5o
DQo+IEBAIC0xMjUsNyArMTI1LDYgQEAgc3RydWN0IGFtZGdwdV9mZW5jZV9kcml2ZXIgew0KPiAg
IAl1bnNpZ25lZAkJCWlycV90eXBlOw0KPiAgIAlzdHJ1Y3QgdGltZXJfbGlzdAkJZmFsbGJhY2tf
dGltZXI7DQo+ICAgCXVuc2lnbmVkCQkJbnVtX2ZlbmNlc19tYXNrOw0KPiAtCXNwaW5sb2NrX3QJ
CQlsb2NrOw0KPiAgIAlzdHJ1Y3QgZG1hX2ZlbmNlCQkqKmZlbmNlczsNCj4gICB9Ow0KPiAgIA0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
