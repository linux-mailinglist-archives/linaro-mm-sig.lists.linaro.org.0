Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMusLeoD4Wn6oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:42 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A50D4112B2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:44:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6CCC344C73
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:44:41 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by lists.linaro.org (Postfix) with ESMTPS id 973E23F76F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 15:53:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=s757RKo7;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.218.49 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b7277324204so45694666b.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Dec 2025 07:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1765468410; x=1766073210; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=//kf8epaTiQVajSqLUSI6FTZoYhi+XOxmn4MslT1I1s=;
        b=s757RKo7IXYhVNxxIjTZhAsECxxUJ+6N4tgdrlvzZk3CV5aG1qTt5HtBdhRJU9rYTF
         kABovQarG8IzHZBVT1Ft0SznCmeeXSEHh6NDCAiYvOduxksVH52YQn3tiUx2v9JX/lJl
         TFa2173yjqVuey4d/UNCdjdqp2IxBGbopssjzIhGT9ldSlU01e8p/gVfY+q4B2dfgYt5
         iD142My0gmohAxUjN8bnpCtvONOZLwNRnAJs9uO9dlPiMbaf71Bo57qaq22uSa5ooemk
         TAdO1OawYin9e2FVp9mCIb48nzsv2bxi776Z+2MPB0U4cXsK9wSzNwTeml8Lhoy/ZAEd
         8Dcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765468410; x=1766073210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=//kf8epaTiQVajSqLUSI6FTZoYhi+XOxmn4MslT1I1s=;
        b=LwkYtOhFH0owDiFIA0AKCNZtQl/w7O+hmx5cUzpF/uMUnDVJPzcQsgymoCfNX3Dl4t
         9IASIg+JIY0BvCK1yEvxrSSCaHvv73+CHvCNEcJdL0clrCdzohI/EmKwlA5nfkDN72d5
         z3Jlmfl93jetrJv01AzcxHJBaZIfb0jFKxmjS7b0cSqkkDY85hS20wE0taUy0Jfamr2q
         GmmEsSfl95IuYiOI2d0sSuHYHIbdsclaxhQxxB0Rf6bOs9cM4c0S/IqsVgLsRTE7X6No
         AbtGuoT7i5O/v99Bn2/vLjYCgv3G9cU2p01o6j8oxaC2oU0hmOvuwvqOIydegozfDKbt
         09BA==
X-Forwarded-Encrypted: i=1; AJvYcCVKo/WhHA71LQGQnTLzVa3SqTKNcZJZDDwiQVk7gCWoWgJixljQMRSOSq2YFrITc7q7AY3vlLYzfyBmmqWq@lists.linaro.org
X-Gm-Message-State: AOJu0YzS1CUSIIsYIOrfu2CP/zPcTG5T0y+3CxSh2cDcGsjoDdvF31Qn
	rWO4lsHk4HAxFSiucT4dmtXKdjk/mJPx/haTIQQBnnpKhC7eEEkL2SNHgIS3f0TJg14=
X-Gm-Gg: AY/fxX5uAj4E/hXARuxlff2FWDNBamRLLD9hgXltBvb/Y7mlsicFB1AgwTNWwcZN40+
	aLCxqKG3qA3wWJOBPF+JPXBBw4uxd790I4ndPSKf5ps+L9NDBpK4c61Zs2yD/0jIE95b2MnsaAE
	9FWFx1+myQWLW0K7oSCaVmUBrXD9nBXHZb5ITOCHjOesMaAuOKNqzJ/e8y8S5bX4ViC76pFaznI
	+TzsSFQIPNfIjUOhfanXE9CxIh+ykji/QWrSLBsQmo86XNVnpm2pG84aGBoM0Jjn8fSt2EoWuds
	rREs+lEtEvngWdVQ7pTxmirPr62xR92qG4FVspAfUuGoxu2CQu8jvCgYAzpdjGakID02VELtJNm
	BVRX7i1h9tZk6+cMbHiHFkoEB9gBatbXlXERl3BkofIspuS+TKgJ3DHesu/FD+5eKQrcSqsKgVY
	ijTFbb5uyGFsso3F675db49FBNCJE8
X-Google-Smtp-Source: AGHT+IH7Zd5E84BS+SQiw7Gqd8PtDloJOM0ZHPRsWbUyKSkrntowtEEA4JshbEvBCrsPplDcIOlK+Q==
X-Received: by 2002:a17:907:96a6:b0:b7a:1bdd:3313 with SMTP id a640c23a62f3a-b7ce85a250amr677917766b.64.1765468410463;
        Thu, 11 Dec 2025 07:53:30 -0800 (PST)
Received: from [192.168.1.83] ([86.33.28.86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29f51esm304755266b.14.2025.12.11.07.53.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Dec 2025 07:53:30 -0800 (PST)
Message-ID: <e426d618-3d6e-4d93-b6fd-4c5e1b11d9f2@ursulin.net>
Date: Thu, 11 Dec 2025 16:53:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <20251211122407.1709-12-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251211122407.1709-12-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: RQAXJHTEQU54WZ34BIZM4QK3QZSJYI43
X-Message-ID-Hash: RQAXJHTEQU54WZ34BIZM4QK3QZSJYI43
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:45 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 11/19] drm/amdgpu: independence for the amdgpu_fence! v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RQAXJHTEQU54WZ34BIZM4QK3QZSJYI43/>
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
	DATE_IN_PAST(1.00)[3023];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,mailbox.org,intel.com,linaro.org];
	DMARC_NA(0.00)[ursulin.net];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.199];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,ursulin.net:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 5A50D4112B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMS8xMi8yMDI1IDEzOjE2LCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBUaGlzIGFs
bG93cyBhbWRncHVfZmVuY2VzIHRvIG91dGxpdmUgdGhlIGFtZGdwdSBtb2R1bGUuDQo+DQo+IHYy
OiB1c2UgZG1hX2ZlbmNlX2dldF9yY3Vfc2FmZSB0byBiZSBOVUxMIHNhZmUgaGVyZS4NCj4NCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KPiAtLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZmVuY2UuYyB8
IDYzICsrKysrKystLS0tLS0tLS0tLS0tLS0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3JpbmcuaCAgfCAgMSAtDQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRp
b25zKCspLCA0NCBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2ZlbmNlLmMNCj4gaW5kZXggYzc4NDNlMzM2MzEwLi5jNjM2MzQ3ODAxYzEgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jDQo+IEBAIC0xMTIs
OCArMTEyLDcgQEAgaW50IGFtZGdwdV9mZW5jZV9lbWl0KHN0cnVjdCBhbWRncHVfcmluZyAqcmlu
Zywgc3RydWN0IGFtZGdwdV9mZW5jZSAqYWYsDQo+ICAgCWFmLT5yaW5nID0gcmluZzsNCj4gICAN
Cj4gICAJc2VxID0gKytyaW5nLT5mZW5jZV9kcnYuc3luY19zZXE7DQo+IC0JZG1hX2ZlbmNlX2lu
aXQoZmVuY2UsICZhbWRncHVfZmVuY2Vfb3BzLA0KPiAtCQkgICAgICAgJnJpbmctPmZlbmNlX2Ry
di5sb2NrLA0KPiArCWRtYV9mZW5jZV9pbml0KGZlbmNlLCAmYW1kZ3B1X2ZlbmNlX29wcywgTlVM
TCwNCj4gICAJCSAgICAgICBhZGV2LT5mZW5jZV9jb250ZXh0ICsgcmluZy0+aWR4LCBzZXEpOw0K
PiAgIA0KPiAgIAlhbWRncHVfcmluZ19lbWl0X2ZlbmNlKHJpbmcsIHJpbmctPmZlbmNlX2Rydi5n
cHVfYWRkciwNCj4gQEAgLTQ2Nyw3ICs0NjYsNiBAQCBpbnQgYW1kZ3B1X2ZlbmNlX2RyaXZlcl9p
bml0X3Jpbmcoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nKQ0KPiAgIAl0aW1lcl9zZXR1cCgmcmlu
Zy0+ZmVuY2VfZHJ2LmZhbGxiYWNrX3RpbWVyLCBhbWRncHVfZmVuY2VfZmFsbGJhY2ssIDApOw0K
PiAgIA0KPiAgIAlyaW5nLT5mZW5jZV9kcnYubnVtX2ZlbmNlc19tYXNrID0gcmluZy0+bnVtX2h3
X3N1Ym1pc3Npb24gKiAyIC0gMTsNCj4gLQlzcGluX2xvY2tfaW5pdCgmcmluZy0+ZmVuY2VfZHJ2
LmxvY2spOw0KPiAgIAlyaW5nLT5mZW5jZV9kcnYuZmVuY2VzID0ga2NhbGxvYyhyaW5nLT5udW1f
aHdfc3VibWlzc2lvbiAqIDIsIHNpemVvZih2b2lkICopLA0KPiAgIAkJCQkJIEdGUF9LRVJORUwp
Ow0KPiAgIA0KPiBAQCAtNjU0LDE2ICs2NTIsMjAgQEAgdm9pZCBhbWRncHVfZmVuY2VfZHJpdmVy
X3NldF9lcnJvcihzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIGludCBlcnJvcikNCj4gICAJc3Ry
dWN0IGFtZGdwdV9mZW5jZV9kcml2ZXIgKmRydiA9ICZyaW5nLT5mZW5jZV9kcnY7DQo+ICAgCXVu
c2lnbmVkIGxvbmcgZmxhZ3M7DQo+ICAgDQo+IC0Jc3Bpbl9sb2NrX2lycXNhdmUoJmRydi0+bG9j
aywgZmxhZ3MpOw0KPiArCXJjdV9yZWFkX2xvY2soKTsNCj4gICAJZm9yICh1bnNpZ25lZCBpbnQg
aSA9IDA7IGkgPD0gZHJ2LT5udW1fZmVuY2VzX21hc2s7ICsraSkgew0KPiAgIAkJc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2U7DQo+ICAgDQo+IC0JCWZlbmNlID0gcmN1X2RlcmVmZXJlbmNlX3Byb3Rl
Y3RlZChkcnYtPmZlbmNlc1tpXSwNCj4gLQkJCQkJCSAgbG9ja2RlcF9pc19oZWxkKCZkcnYtPmxv
Y2spKTsNCj4gLQkJaWYgKGZlbmNlICYmICFkbWFfZmVuY2VfaXNfc2lnbmFsZWRfbG9ja2VkKGZl
bmNlKSkNCj4gKwkJZmVuY2UgPSBkbWFfZmVuY2VfZ2V0X3JjdShkcnYtPmZlbmNlc1tpXSk7DQoN
CmRtYV9mZW5jZV9nZXRfcmN1IGlzIG5vdCBzYWZlIGFnYWluc3QgcGFzc2luZyBhIE5VTEwgZmVu
Y2UgaW4sIHdoaWxlIHRoZSANCmV4aXN0aW5nIGNvZGUgbWFrZXMgaXQgbG9vayBsaWtlIGRydi0+
ZmVuY2VbXSBzbG90IGNhbiBjb250YWluIE5VTEwgYXQgDQp0aGlzIHBvaW50Pw0KDQphbWRncHVf
ZmVuY2VfcHJvY2VzcygpIGlzIHRoZSBwbGFjZSB3aGljaCBjYW4gTlVMTCB0aGUgc2xvdHM/IEly
cSANCmNvbnRleHQ/IFdoeSBpcyB0aGF0IHNhZmUgd2l0aCBubyByZWZlcmVuY2UgaGVsZCBmcm9t
IGNsZWFyaW5nIHRoZSBzbG90IA0KdG8gb3BlcmF0aW5nIG9uIHRoZSBmZW5jZT8NCg0KPiArCQlp
ZiAoIWZlbmNlKQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4gKwkJZG1hX2ZlbmNlX2xvY2tfaXJx
c2F2ZShmZW5jZSwgZmxhZ3MpOw0KPiArCQlpZiAoIWRtYV9mZW5jZV9pc19zaWduYWxlZF9sb2Nr
ZWQoZmVuY2UpKQ0KPiAgIAkJCWRtYV9mZW5jZV9zZXRfZXJyb3IoZmVuY2UsIGVycm9yKTsNCj4g
KwkJZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLCBmbGFncyk7DQo+ICAgCX0NCj4g
LQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkcnYtPmxvY2ssIGZsYWdzKTsNCj4gKwlyY3VfcmVh
ZF91bmxvY2soKTsNCj4gICB9DQo+ICAgDQo+ICAgLyoqDQo+IEBAIC03MTQsMTYgKzcxNiwxOSBA
QCB2b2lkIGFtZGdwdV9mZW5jZV9kcml2ZXJfZ3VpbHR5X2ZvcmNlX2NvbXBsZXRpb24oc3RydWN0
IGFtZGdwdV9mZW5jZSAqYWYpDQo+ICAgCXNlcSA9IHJpbmctPmZlbmNlX2Rydi5zeW5jX3NlcSAm
IHJpbmctPmZlbmNlX2Rydi5udW1fZmVuY2VzX21hc2s7DQo+ICAgDQo+ICAgCS8qIG1hcmsgYWxs
IGZlbmNlcyBmcm9tIHRoZSBndWlsdHkgY29udGV4dCB3aXRoIGFuIGVycm9yICovDQo+IC0Jc3Bp
bl9sb2NrX2lycXNhdmUoJnJpbmctPmZlbmNlX2Rydi5sb2NrLCBmbGFncyk7DQo+ICsJcmN1X3Jl
YWRfbG9jaygpOw0KPiAgIAlkbyB7DQo+ICAgCQlsYXN0X3NlcSsrOw0KPiAgIAkJbGFzdF9zZXEg
Jj0gcmluZy0+ZmVuY2VfZHJ2Lm51bV9mZW5jZXNfbWFzazsNCj4gICANCj4gICAJCXB0ciA9ICZy
aW5nLT5mZW5jZV9kcnYuZmVuY2VzW2xhc3Rfc2VxXTsNCj4gLQkJcmN1X3JlYWRfbG9jaygpOw0K
PiAtCQl1bnByb2Nlc3NlZCA9IHJjdV9kZXJlZmVyZW5jZSgqcHRyKTsNCj4gKwkJdW5wcm9jZXNz
ZWQgPSBkbWFfZmVuY2VfZ2V0X3JjdV9zYWZlKHB0cik7DQoNClNpbWlsYXIgY29uY2VybiBsaWtl
IHRoZSBhYm92ZS4NCg0KUmVnYXJkcywNCg0KVHZydGtvDQo+ICsNCj4gKwkJaWYgKCF1bnByb2Nl
c3NlZCkNCj4gKwkJCWNvbnRpbnVlOw0KPiAgIA0KPiAtCQlpZiAodW5wcm9jZXNzZWQgJiYgIWRt
YV9mZW5jZV9pc19zaWduYWxlZF9sb2NrZWQodW5wcm9jZXNzZWQpKSB7DQo+ICsJCWRtYV9mZW5j
ZV9sb2NrX2lycXNhdmUodW5wcm9jZXNzZWQsIGZsYWdzKTsNCj4gKwkJaWYgKGRtYV9mZW5jZV9p
c19zaWduYWxlZF9sb2NrZWQodW5wcm9jZXNzZWQpKSB7DQo+ICAgCQkJZmVuY2UgPSBjb250YWlu
ZXJfb2YodW5wcm9jZXNzZWQsIHN0cnVjdCBhbWRncHVfZmVuY2UsIGJhc2UpOw0KPiAgIA0KPiAg
IAkJCWlmIChmZW5jZSA9PSBhZikNCj4gQEAgLTczMSw5ICs3MzYsMTAgQEAgdm9pZCBhbWRncHVf
ZmVuY2VfZHJpdmVyX2d1aWx0eV9mb3JjZV9jb21wbGV0aW9uKHN0cnVjdCBhbWRncHVfZmVuY2Ug
KmFmKQ0KPiAgIAkJCWVsc2UgaWYgKGZlbmNlLT5jb250ZXh0ID09IGFmLT5jb250ZXh0KQ0KPiAg
IAkJCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZmZW5jZS0+YmFzZSwgLUVDQU5DRUxFRCk7DQo+ICAg
CQl9DQo+IC0JCXJjdV9yZWFkX3VubG9jaygpOw0KPiArCQlkbWFfZmVuY2VfdW5sb2NrX2lycXJl
c3RvcmUodW5wcm9jZXNzZWQsIGZsYWdzKTsNCj4gKwkJZG1hX2ZlbmNlX3B1dCh1bnByb2Nlc3Nl
ZCk7DQo+ICAgCX0gd2hpbGUgKGxhc3Rfc2VxICE9IHNlcSk7DQo+IC0Jc3Bpbl91bmxvY2tfaXJx
cmVzdG9yZSgmcmluZy0+ZmVuY2VfZHJ2LmxvY2ssIGZsYWdzKTsNCj4gKwlyY3VfcmVhZF91bmxv
Y2soKTsNCj4gICAJLyogc2lnbmFsIHRoZSBndWlsdHkgZmVuY2UgKi8NCj4gICAJYW1kZ3B1X2Zl
bmNlX3dyaXRlKHJpbmcsICh1MzIpYWYtPmJhc2Uuc2Vxbm8pOw0KPiAgIAlhbWRncHVfZmVuY2Vf
cHJvY2VzcyhyaW5nKTsNCj4gQEAgLTgyMywzOSArODI5LDEwIEBAIHN0YXRpYyBib29sIGFtZGdw
dV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQo+ICAgCXJldHVy
biB0cnVlOw0KPiAgIH0NCj4gICANCj4gLS8qKg0KPiAtICogYW1kZ3B1X2ZlbmNlX2ZyZWUgLSBm
cmVlIHVwIHRoZSBmZW5jZSBtZW1vcnkNCj4gLSAqDQo+IC0gKiBAcmN1OiBSQ1UgY2FsbGJhY2sg
aGVhZA0KPiAtICoNCj4gLSAqIEZyZWUgdXAgdGhlIGZlbmNlIG1lbW9yeSBhZnRlciB0aGUgUkNV
IGdyYWNlIHBlcmlvZC4NCj4gLSAqLw0KPiAtc3RhdGljIHZvaWQgYW1kZ3B1X2ZlbmNlX2ZyZWUo
c3RydWN0IHJjdV9oZWFkICpyY3UpDQo+IC17DQo+IC0Jc3RydWN0IGRtYV9mZW5jZSAqZiA9IGNv
bnRhaW5lcl9vZihyY3UsIHN0cnVjdCBkbWFfZmVuY2UsIHJjdSk7DQo+IC0NCj4gLQkvKiBmcmVl
IGZlbmNlX3NsYWIgaWYgaXQncyBzZXBhcmF0ZWQgZmVuY2UqLw0KPiAtCWtmcmVlKHRvX2FtZGdw
dV9mZW5jZShmKSk7DQo+IC19DQo+IC0NCj4gLS8qKg0KPiAtICogYW1kZ3B1X2ZlbmNlX3JlbGVh
c2UgLSBjYWxsYmFjayB0aGF0IGZlbmNlIGNhbiBiZSBmcmVlZA0KPiAtICoNCj4gLSAqIEBmOiBm
ZW5jZQ0KPiAtICoNCj4gLSAqIFRoaXMgZnVuY3Rpb24gaXMgY2FsbGVkIHdoZW4gdGhlIHJlZmVy
ZW5jZSBjb3VudCBiZWNvbWVzIHplcm8uDQo+IC0gKiBJdCBqdXN0IFJDVSBzY2hlZHVsZXMgZnJl
ZWluZyB1cCB0aGUgZmVuY2UuDQo+IC0gKi8NCj4gLXN0YXRpYyB2b2lkIGFtZGdwdV9mZW5jZV9y
ZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UgKmYpDQo+IC17DQo+IC0JY2FsbF9yY3UoJmYtPnJjdSwg
YW1kZ3B1X2ZlbmNlX2ZyZWUpOw0KPiAtfQ0KPiAtDQo+ICAgc3RhdGljIGNvbnN0IHN0cnVjdCBk
bWFfZmVuY2Vfb3BzIGFtZGdwdV9mZW5jZV9vcHMgPSB7DQo+ICAgCS5nZXRfZHJpdmVyX25hbWUg
PSBhbWRncHVfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lLA0KPiAgIAkuZ2V0X3RpbWVsaW5lX25hbWUg
PSBhbWRncHVfZmVuY2VfZ2V0X3RpbWVsaW5lX25hbWUsDQo+ICAgCS5lbmFibGVfc2lnbmFsaW5n
ID0gYW1kZ3B1X2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcsDQo+IC0JLnJlbGVhc2UgPSBhbWRncHVf
ZmVuY2VfcmVsZWFzZSwNCj4gICB9Ow0KPiAgIA0KPiAgIC8qDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcmluZy5oIGIvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X3JpbmcuaA0KPiBpbmRleCA3YTI3YzZjNGJiNDQuLjljYmY2MzQ1NDAw
NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3Jpbmcu
aA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcmluZy5oDQo+IEBA
IC0xMjUsNyArMTI1LDYgQEAgc3RydWN0IGFtZGdwdV9mZW5jZV9kcml2ZXIgew0KPiAgIAl1bnNp
Z25lZAkJCWlycV90eXBlOw0KPiAgIAlzdHJ1Y3QgdGltZXJfbGlzdAkJZmFsbGJhY2tfdGltZXI7
DQo+ICAgCXVuc2lnbmVkCQkJbnVtX2ZlbmNlc19tYXNrOw0KPiAtCXNwaW5sb2NrX3QJCQlsb2Nr
Ow0KPiAgIAlzdHJ1Y3QgZG1hX2ZlbmNlCQkqKmZlbmNlczsNCj4gICB9Ow0KPiAgIA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
