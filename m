Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPYMBw//4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:23:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E34EB410A1A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:23:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 127AA404DF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:23:58 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by lists.linaro.org (Postfix) with ESMTPS id 30EE93F8FD
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 14:08:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=YxlhdHbi;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.128.48 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-47118259fd8so7805685e9.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 06:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1763647697; x=1764252497; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JXstQUEqL/bZuziJRZPRZ2cDQPTUDlyNI00lh/nMSWI=;
        b=YxlhdHbi85eicT5fUAdVb8PSPceclkxNKqPxRoe7JfPI9h10gpO7C5z+NkspQw6PG8
         PbWvwARkQXbq8lL40d6rVjW/TtS+dPltM8iAcS0QHr31WD1nTN77QCZcmXe8ryn9T7LD
         BjDdrxeoaeQxD/U4bJ3C2kGE+lromydaQjyhZQRYWR5Y9Mlii9aQBMOd7q0t8+SswTmh
         MOq8i+Ay0ao+xksqkKlxdMUcdYHg8ORFGlaWsUG2toUYSvU+8wS39akhujGHyiz7H/SW
         9jud9XjW4mi6jsiYyqxQKxeYlV6YcUYeSRBZruFmGXU759yvrhHUtfraN+JVvIIQNIur
         xtKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763647697; x=1764252497;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JXstQUEqL/bZuziJRZPRZ2cDQPTUDlyNI00lh/nMSWI=;
        b=wt/tLyzhqprC7RS2/0IFUm66dnfuzCTw/SghqiukZq6l9DpRjL47aH9UDNwEKjcHFD
         n9D9/7cUNlt51l4yRhuDpu1KZ69yJ7aM7F0Mm3UHosnbEiE+dYpsXdpAt5GHFHqlYVp/
         +Ehm4XobGbuOIY8WBcnQpDrbnFR9S76Cmwg9KI/wY9oOWRzG3NkKnEIYNDIbDjtue4q5
         ASrvdwgABz3np3H5Ln0y503LKf8Nn76xVjD//77Ioq3Qi1RNaMp9BEeaFflp2rZ/0Ze3
         0zvmRxVoeiNIqjxMu7iUJZgm4PnnWx2evInT3sPqaaItqiaGj7I1ZVRfoV6/ribrwzQV
         Iiuw==
X-Forwarded-Encrypted: i=1; AJvYcCVXG29cshBDv/HiBnTIpoBO6h386YQji87FKaE1iVzCOd4A6ChWlp8eJpPck5g+ncRsdUI+v+8xLY68Xdi6@lists.linaro.org
X-Gm-Message-State: AOJu0YyrFJKFEEmdeNo+IB3vjSar6l3sfVJjKMUPRMK3oEtWsVmrM6kj
	y+FUuf9E/XWmaSOMj6aT+G+T8U5Eh24saVoW4KZi+p2awGnwvjyDiowmWyyB6wVFf5k=
X-Gm-Gg: ASbGnct+PmHiOScltDCF/hCYn78/flH4M9WtbiBHRewP2if3XM3pymoxb+g3lmgzt7S
	KvA12TM+y92zlbSk0dPcqxUE16yhD4/J5+lAAKd3y2pYCSaZUM4sxzVUMEYl45iJvUXY/0Drf5j
	856jcih7wTcS3d/ihFwcNOWzF8fzZThHURsSqQyneWN0BjwNkq0/h49T4KHsqoUvHe7Xb8SwHkz
	/Ok5XJFga4vIpD4DuQT5d24zJfFECvS1KhJGLHVFdmjCIfWyeQDxPoA+sNqBMwreSjIrsTjsCxe
	kOd63JHOHvzZp0To2BcRS5zXVZP0arTTkjVuedDLCexvPaFqDxjXCUSFcUYXABNA/ykGdI6zDx/
	wrM1kUMsP8XEnLBxm0+Mc6S2w0l4mcFR1U3n4NQhR2WdHb0Yb4HiLEENWm/3jfPwxPZmme6THZg
	al36v7dmTwa7pafnhC0aY1kHI4G+mLI55J
X-Google-Smtp-Source: AGHT+IGiYICzT0SiSdJ79J+OFCjv7rFWlIQ83a4GvCv8TxbMfVeiavtPjbFnDFmUN/8OlFIRX6N7Lg==
X-Received: by 2002:a05:600c:4704:b0:477:7d94:5d0e with SMTP id 5b1f17b1804b1-477b8a9ab58mr30259805e9.27.1763647696641;
        Thu, 20 Nov 2025 06:08:16 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b82d8023sm51152575e9.4.2025.11.20.06.08.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 06:08:16 -0800 (PST)
Message-ID: <1036b926-a874-443a-a1bb-78c7889e7895@ursulin.net>
Date: Thu, 20 Nov 2025 14:08:15 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 phasta@mailbox.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-3-christian.koenig@amd.com>
 <ef0f9459-6733-4e0a-9c06-c36c02e5a93c@ursulin.net>
 <35d7ab6c-bd4d-4267-8ae1-2637d6c0f1ff@amd.com>
 <ed7595b4-b6e4-4a7f-ad35-e3a3cf063e72@ursulin.net>
 <7e436158-41ed-4c4b-a0e1-7d4bf03e3499@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <7e436158-41ed-4c4b-a0e1-7d4bf03e3499@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IKZR4ZDPTTQJRP2ANG4KZNOTIZS5XQI2
X-Message-ID-Hash: IKZR4ZDPTTQJRP2ANG4KZNOTIZS5XQI2
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:03 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/18] dma-buf: protected fence ops by RCU v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IKZR4ZDPTTQJRP2ANG4KZNOTIZS5XQI2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.59 / 15.00];
	DATE_IN_PAST(1.00)[3529];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[ursulin.net];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,mailbox.org,gmail.com,ffwll.ch,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_HAM(-0.00)[-0.673];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: E34EB410A1A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAyMC8xMS8yMDI1IDE0OjAzLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBPbiAxMS8x
OC8yNSAxNzowMywgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+Pj4+PiBAQCAtNDQ4LDEzICs0NjUs
MTkgQEAgZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSkNCj4+Pj4+ICDCoMKgIHN0YXRpYyBpbmxpbmUgYm9vbA0KPj4+Pj4gIMKgwqAgZG1hX2ZlbmNl
X2lzX3NpZ25hbGVkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPj4+Pj4gIMKgwqAgew0KPj4+
Pj4gK8KgwqDCoCBjb25zdCBzdHJ1Y3QgZG1hX2ZlbmNlX29wcyAqb3BzOw0KPj4+Pj4gKw0KPj4+
Pj4gIMKgwqDCoMKgwqDCoCBpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklU
LCAmZmVuY2UtPmZsYWdzKSkNCj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gdHJ1
ZTsNCj4+Pj4+ICDCoMKgIC3CoMKgwqAgaWYgKGZlbmNlLT5vcHMtPnNpZ25hbGVkICYmIGZlbmNl
LT5vcHMtPnNpZ25hbGVkKGZlbmNlKSkgew0KPj4+Pj4gK8KgwqDCoCByY3VfcmVhZF9sb2NrKCk7
DQo+Pj4+PiArwqDCoMKgIG9wcyA9IHJjdV9kZXJlZmVyZW5jZShmZW5jZS0+b3BzKTsNCj4+Pj4+
ICvCoMKgwqAgaWYgKG9wcy0+c2lnbmFsZWQgJiYgb3BzLT5zaWduYWxlZChmZW5jZSkpIHsNCj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoCByY3VfcmVhZF91bmxvY2soKTsNCj4+Pj4NCj4+Pj4gV2l0aCB0
aGUgdW5sb2NrZWQgdmVyc2lvbiB0d28gdGhyZWFkcyBjb3VsZCByYWNlIGFuZCBvbmUgY291bGQg
bWFrZSB0aGUgZmVuY2UtPmxvY2sgZ28gYXdheSBqdXN0IGFyb3VuZCBoZXJlLCBiZWZvcmUgdGhl
IGRtYV9mZW5jZV9zaWduYWwgYmVsb3cgd2lsbCB0YWtlIGl0LiBJdCBzZWVtcyBpdCBpcyBvbmx5
IHNhZmUgdG8gcmN1X3JlYWRfdW5sb2NrIGJlZm9yZSBzaWduYWxpbmcgaWYgdXNpbmcgdGhlIGVt
YmVkZGVkIGZlbmNlIChsYXRlciBpbiB0aGUgc2VyaWVzKS4gQ2FuIHlvdSB0aGluayBvZiBhIGRv
d25zaWRlIHRvIGhvbGRpbmcgdGhlIHJjdSByZWFkIGxvY2sgdG8gYWZ0ZXIgc2lnbmFsaW5nPyB0
aGF0IHdvdWxkIG1ha2UgaXQgc2FmZSBJIHRoaW5rLg0KPj4+DQo+Pj4gV2VsbCBpdCdzIGdvb2Qg
dG8gdGFsayBhYm91dCBpdCBidXQgSSB0aGluayB0aGF0IGl0IGlzIG5vdCBuZWNlc3NhcnkgdG8g
cHJvdGVjdCB0aGUgbG9jayBpbiB0aGlzIHBhcnRpY3VsYXIgY2FzZS4NCj4+Pg0KPj4+IFNlZSB0
aGUgUkNVIHByb3RlY3Rpb24gaXMgb25seSBmb3IgdGhlIGZlbmNlLT5vcHMgcG9pbnRlciwgYnV0
IHRoZSBsb2NrIGNhbiBiZSB0YWtlbiB3YXkgYWZ0ZXIgdGhlIGZlbmNlIGlzIGFscmVhZHkgc2ln
bmFsZWQuDQo+Pj4NCj4+PiBUaGF0J3Mgd2h5IEkgY2FtZSB1cCB3aXRoIHRoZSBwYXRjaCB0byBt
b3ZlIHRoZSBsb2NrIGludG8gdGhlIGZlbmNlIGluIHRoZSBmaXJzdCBwbGFjZS4NCj4+DQo+PiBS
aWdodC4gQW5kIHlvdSB0aGluayB0aGVyZSBpcyBub3RoaW5nIHRvIGdhaW4gd2l0aCB0aGUgb3B0
aW9uIG9mIGtlZXBpbmcgdGhlIHJjdV9yZWFkX3VubG9jaygpIHRvIGFmdGVyIHNpZ25hbGxpbmc/
IEllLiB3aHkgbm90IHBsdWcgYSBwb3RlbnRpYWwgcmFjZSBpZiB3ZSBjYW4gZm9yIG5vIG5lZ2F0
aXZlIGVmZmVjdC4NCj4gDQo+IEkgdGhvdWdodCBxdWl0ZSBhIGJpdCBvdmVyIHRoYXQsIGJ1dCBh
dCBsZWFzdCBvZiBoYW5kIEkgY2FuJ3QgY29tZSB1cCB3aXRoIGEgcmVhc29uIHdoeSB3ZSBzaG91
bGQgZG8gdGhpcy4gVGhlIHNpZ25hbGluZyBwYXRoIGRvZXNuJ3QgbmVlZCB0aGUgUkNVIHJlYWQg
c2lkZSBsb2NrIGFzIGZhciBhcyBJIGNhbiBzZWUuDQoNCk9rYXksIGFuZCB0aGFua3MsIGl0IGlu
ZGVlZCBzb3VuZHMgcmlnaHQgZm9yIHRoZSBzaWduYWxsaW5nIHBhdGguIEFueSANCnJhY2VzIGhp
dHRpbmcgdGhpcyB3b3VsZCBtZWFuIGEgbW9yZSBzZXJpb3VzIHByb2JsZW0gaW4gdGhlIGRyaXZl
ciANCmltcGxlbWVudGF0aW9uLg0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
