Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHcpMBT/4GkSoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:24:04 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 84977410A31
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:24:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9008F405DC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:24:03 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by lists.linaro.org (Postfix) with ESMTPS id B09A83F8FD
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 14:10:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ursulin.net header.s=google header.b=vTV2ePNd;
	spf=pass (lists.linaro.org: domain of tursulin@ursulin.net designates 209.85.128.46 as permitted sender) smtp.mailfrom=tursulin@ursulin.net;
	dmarc=none
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4775895d69cso4279275e9.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 06:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1763647801; x=1764252601; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eCHpy1o/ACTFMJgtD/aw3O86hM4JbHXhTf5b8jy+cHc=;
        b=vTV2ePNdFPtmP/xe+MC+ESa13AURxxF09KEu/nFAF+zIAqlz99q4jN8koy1e8lJ3vZ
         yfqoaZbGTB/JrBTRdtVuml+kNRdAyKtmTdGVB2qMjzWgIWOujlKmlTxgptNyN3NK3Dan
         92z7etcrWVCfMFPYjSolA46I9stnHRriVOuJqz68jobMj8SEe9aQj+Y6qI9enZQ74orL
         VOkEDK4ySRKB8JGTp0At0hRWa9KH8Dckr8n/LyT6Ke7dw1mYWieGAlgBygdmrTZIM6HC
         WF3sAsZ608lKs1GLQHCFs8eu4QBjHj+Ewe6BIeLuGJACYL6rFGA5B5ogj9WPATBgoNxE
         bDyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763647801; x=1764252601;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eCHpy1o/ACTFMJgtD/aw3O86hM4JbHXhTf5b8jy+cHc=;
        b=SHjzeaAK1qRMG3y3/06SUKX7caBhQtQdtxi+PiZ4KMNVghbRzLOePbJkDxka+XOdfb
         pN9AfIOeLeC6vMpBrqhq+HcuK201j66uNaLyBIm8cNpwlQdzNwxD4jPRpkZK62LDfJT6
         iML9mCYThOVqD8A4zeEX4TljYmhy3quG6ozpZG/ovKIqN4mHd9FtIQSrmob42Yd8ZbWy
         3mfNev9iRyZHAKXdNZ4s6jMAoXgw83AkMuUs9d8ZKua2Kzn3h28O4MZMmneSmwe0WGTJ
         gVUnQeCBL71qSYiH3E9rscm6v4nW+9AFVcgcwOnBAZRex7LSIU9tjMmx2RpJPBgKeRUD
         m/pg==
X-Forwarded-Encrypted: i=1; AJvYcCUAQPqPrEVzl0l0OZbrKrz3uamOXZPQF/cOTjGA0VotsNX9j+4iXLwXG29GT3HMvtvCeeKXEqrcA4s8WUhe@lists.linaro.org
X-Gm-Message-State: AOJu0YylY03Y9Wf00XF2f3OmT+yAHxQMDrNueNccf9e0sCxbaOGp1Qc5
	FhDfntYhVRdaoUX9zIcRK7YMf3JjdG1nXCgp985XiVdOy3JNoJoKH2OMJTIoj/pIyc4=
X-Gm-Gg: ASbGncufcAUDSprJUyWKwHPYTeYX37gdB2gXVBVF5+otjXGjTxuwKnXlwwOgGRQzoH/
	Yvzc2o8vA5TNdAdeHEuRZi5uxokh+sJ1wV/km2l587mt+1FZC8/TTE9yGxsx/w7OlLsLqYgPqLy
	UOIAgiXhdKGNjfm65pRq6r5lsAO/ojY82YlWvG1jWe7d0ZMvKV3UMl3BoW/kANOZV6LNZVCXgjV
	PctdK+ejZd8roa+N8MqrXobI4GZIltDZlZnpsCj3RxagwwOAYWuUjVKB3gi+88OiM5xmocVV+FR
	MMbIzuONCvf4c9TeooSM9oIbLiD8XyIzPpn04Vfun66geZWFT8YzN3YcDrXCiLmfwMwDmg/Ecw4
	WB7Af+1uy7XA4ikJuUxXbPYcWcVeVu65gM2EtmJGWKWGoTJtF4UlNBI0vYLHtdYiwu9mnExSvfp
	M2JII/nOoAqI5mMZAY12SH3Myd0a/tspZa0QSO+RC5dVc=
X-Google-Smtp-Source: AGHT+IF3fFe6uHBbufSIu8dYBqLVhlYanBolrvml//L4SVgEuQ8hTozu3CVUaxX66a/P0gLZaYR88A==
X-Received: by 2002:a05:600c:1f0f:b0:46e:53cb:9e7f with SMTP id 5b1f17b1804b1-477b8a8bd4fmr33404995e9.18.1763647800592;
        Thu, 20 Nov 2025 06:10:00 -0800 (PST)
Received: from [192.168.0.101] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b106a9b0sm111116985e9.11.2025.11.20.06.09.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 06:10:00 -0800 (PST)
Message-ID: <6f26a30f-7c66-4e88-a3bf-bfa41f7efa7b@ursulin.net>
Date: Thu, 20 Nov 2025 14:09:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 phasta@mailbox.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 matthew.brost@intel.com, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-2-christian.koenig@amd.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251113145332.16805-2-christian.koenig@amd.com>
X-Spamd-Bar: ---
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 66M4NTYOVUFNHYDG7MOJGZR2WRL4PJY7
X-Message-ID-Hash: 66M4NTYOVUFNHYDG7MOJGZR2WRL4PJY7
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:01:04 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/18] dma-buf: cleanup dma_fence_describe v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/66M4NTYOVUFNHYDG7MOJGZR2WRL4PJY7/>
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
	NEURAL_SPAM(0.00)[0.015];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 84977410A31
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpPbiAxMy8xMS8yMDI1IDE0OjUxLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiBUaGUgZHJp
dmVyIGFuZCB0aW1lbGluZSBuYW1lIGFyZSBtZWFuaW5nbGVzcyBmb3Igc2lnbmFsZWQgZmVuY2Vz
Lg0KPiANCj4gRHJvcCB0aGVtIGFuZCBhbHNvIHByaW50IHRoZSBjb250ZXh0IG51bWJlci4NCj4g
DQo+IHYyOiBhdm9pZCB0aGUgY2FsbHMgd2hlbiB0aGUgQk8gaXMgYWxyZWFkeSBzaWduYWxlZC4N
Cj4gdjM6IHVzZSBzYW1lIGZvcm1hdCBhcyB0cmFjZSBwb2ludHMgZm9yIGNvbnRleHQgYW5kIHNl
cW5vLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPg0KPiAtLS0NCj4gICBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgfCAy
MCArKysrKysrKysrKy0tLS0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25z
KCspLCA5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBpbmRleCBjNWQxNDc4
YjI4ZGQuLmI0ZjVjODYzNTI3NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1m
ZW5jZS5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYw0KPiBAQCAtOTk3LDE5
ICs5OTcsMjEgQEAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2Vfc2V0X2RlYWRsaW5lKTsNCj4gICAg
Ki8NCj4gICB2b2lkIGRtYV9mZW5jZV9kZXNjcmliZShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwg
c3RydWN0IHNlcV9maWxlICpzZXEpDQo+ICAgew0KPiAtCWNvbnN0IGNoYXIgX19yY3UgKnRpbWVs
aW5lOw0KPiAtCWNvbnN0IGNoYXIgX19yY3UgKmRyaXZlcjsNCj4gKwljb25zdCBjaGFyIF9fcmN1
ICp0aW1lbGluZSA9ICIiOw0KPiArCWNvbnN0IGNoYXIgX19yY3UgKmRyaXZlciA9ICIiOw0KPiAr
CWNvbnN0IGNoYXIgKnNpZ25hbGVkID0gIiI7DQo+ICAgDQo+ICAgCXJjdV9yZWFkX2xvY2soKTsN
Cj4gICANCj4gLQl0aW1lbGluZSA9IGRtYV9mZW5jZV90aW1lbGluZV9uYW1lKGZlbmNlKTsNCj4g
LQlkcml2ZXIgPSBkbWFfZmVuY2VfZHJpdmVyX25hbWUoZmVuY2UpOw0KPiArCWlmICghZG1hX2Zl
bmNlX2lzX3NpZ25hbGVkKGZlbmNlKSkgew0KPiArCQl0aW1lbGluZSA9IGRtYV9mZW5jZV90aW1l
bGluZV9uYW1lKGZlbmNlKTsNCj4gKwkJZHJpdmVyID0gZG1hX2ZlbmNlX2RyaXZlcl9uYW1lKGZl
bmNlKTsNCj4gKwkJc2lnbmFsZWQgPSAidW4iOw0KPiArCX0NCj4gICANCj4gLQlzZXFfcHJpbnRm
KHNlcSwgIiVzICVzIHNlcSAlbGx1ICVzc2lnbmFsbGVkXG4iLA0KPiAtCQkgICByY3VfZGVyZWZl
cmVuY2UoZHJpdmVyKSwNCj4gLQkJICAgcmN1X2RlcmVmZXJlbmNlKHRpbWVsaW5lKSwNCj4gLQkJ
ICAgZmVuY2UtPnNlcW5vLA0KPiAtCQkgICBkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZmVuY2UpID8g
IiIgOiAidW4iKTsNCj4gKwlzZXFfcHJpbnRmKHNlcSwgIiVsbHU6JWxsdSAlcyAlcyAlc3NpZ25h
bGxlZFxuIiwNCj4gKwkJICAgZmVuY2UtPmNvbnRleHQsIGZlbmNlLT5zZXFubywgdGltZWxpbmUs
IGRyaXZlciwNCj4gKwkJICAgc2lnbmFsZWQpOw0KPiAgIA0KPiAgIAlyY3VfcmVhZF91bmxvY2so
KTsNCj4gICB9DQoNCkkgdGhvdWdodCBJIHItYi1lZCB0aGlzIG9uZSBidXQgYXBwYXJlbnRseSBu
b3QuDQoNClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaWdhbGlh
LmNvbT4NCg0KUmVnYXJkcywNCg0KVHZydGtvDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
