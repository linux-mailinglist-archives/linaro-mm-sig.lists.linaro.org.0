Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPcLO0+ZjGkhrgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Feb 2026 15:59:27 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 503DF1255B0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Feb 2026 15:59:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0927640140
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 11 Feb 2026 14:59:26 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by lists.linaro.org (Postfix) with ESMTPS id 3F4CF3F91B
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Feb 2026 14:59:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=HdY7QJWN;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.222.172 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-8c7199e7f79so743922185a.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 11 Feb 2026 06:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770821959; x=1771426759; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EGfUuSKK26aSiDkNR+do+em0hvWRNbIRgZtgATisbok=;
        b=HdY7QJWNHC3LKFdKRWqW9lHqwWdkzG3G2ThGCMdn7suThsAbBe64E2mjPniVdvKgyJ
         LyUCu5E6J1bB9hwzI9bfvURHmR3Qqb6sr+oFLb1U1JbLqKn0TdOZaL5hkfsodfKpDAYk
         zC3qOP0oHyaqbq2qlAunFUQ3ui1oJnXMb4AfB4Qthk8vtnG0uqdxn47qOCejIRD/5Gus
         otRhPcdATOjDET+pxQvCgRQVL/qqHtF/RjneWHUl8CzC3yQvVdfWiXF1G/j4FXAhuUpo
         oHi/OkmEJ+ci5oLtOUKg6fLXELRThfiieaV7SjMBMgpFh0SmIaAPdjpLoJR+xpRsV/Nk
         vpMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770821959; x=1771426759;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EGfUuSKK26aSiDkNR+do+em0hvWRNbIRgZtgATisbok=;
        b=WuKZuxVuijuPRBrppfQI3fpVTQfA/oSwBiZqfLVKq2Xhm70jiSt0yD5Qd4pYgXZYES
         vb0DdBDmqvn5/14sOj7rrpfZsm9FfirYLf8RWlcZPxOB6Fkv322DiPon+ZpEVu10LMem
         il2zcIrZU11QT34Y/O/stWBleMH1OyZNEDU9v/+3OA+4XaBW/SZwK2yYJwMhqsmJORd9
         58EDBQ7+ggBPtNB7fsJXUj8JJG7r1fXs4vRbhMyF0BOeEQvZI0UK95ukcDpC4/zt/wdS
         1F+XODB7lErnC76/T4u+8b1Ww64xc6vysgYr+Ilb1h+lMirMMsKlFoy8tUEb42KX8Afk
         yinQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdwpsIXS8mphirPr+jRZKqZG+CmmnxDYU/o+Rspq3Lq5yzCd5fugcJHRojNIpc6AA5Ciu8PI6qAjvdMCzu@lists.linaro.org
X-Gm-Message-State: AOJu0Ywl1wGcYTlpHC7jc95dulx1D6TjpjUi6d05I9ciKNCmTiJgkJ+A
	UU0kpQ6iZNvl8VoWh4sG+sCqIcRXAPHmUjeaevpIck1fDGVAo9CBtLzc
X-Gm-Gg: AZuq6aLoMDe8oJimG0IJ6StNB0lWKaaUo4DrdBAobjrl1MDHGgU55fRP1VLDUCuGMXx
	1Ig6tXaWuacCmLjWv6x/7EwHaAJrWvVzrkQXFdyPjf9HQWGRkrN9u2LqGnOI+hGZDMG1We+z8v1
	EZtJUyOPbydoapVEuGl/99p7QZlp7D1XngiFTZ+VfVcuOX7f6Ua0rhPRf7pUsLU7ZbK3hgCi48F
	ytZaJQwNHgNlAneZVn6QvuCHQHdVyriXyiDjS7gFFGT97A2FNFCrBYeV07bmLVY1V5zbv+HsQGy
	aL3v4EDI0zjEgptF5kSDT1WWWkhD0vKF/nwGE+ARX6HvdIHOz46tKgZ3X+wTaqyDWsazcsA92xS
	sWobHc/Fjdl8EOg/6UrcfdYFeGgjNBQc2wU4pRZdTh2pfy0YUlqugsG/Bx3m9EheWHd3CKbPbEE
	fmYdRQd92+5y9vNi1nfXAA/d0KrWA3sjHtoHkLbnD0nbeAeg9xelgZlg==
X-Received: by 2002:a05:620a:4410:b0:8c5:3869:3f2e with SMTP id af79cd13be357-8cb28041564mr407145785a.42.1770821958690;
        Wed, 11 Feb 2026 06:59:18 -0800 (PST)
Received: from [10.254.121.37] (mkmvpn.amd.com. [165.204.54.211])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2b0be7f6sm132176385a.3.2026.02.11.06.59.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Feb 2026 06:59:18 -0800 (PST)
Message-ID: <96407179-3ab9-4ba8-9b1c-171187683b41@gmail.com>
Date: Wed, 11 Feb 2026 15:59:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, matthew.brost@intel.com, sumit.semwal@linaro.org
References: <20260210102232.1642-1-christian.koenig@amd.com>
 <20260210102232.1642-5-christian.koenig@amd.com>
 <ebfe7aa7f409513d5e04ac407700a8bbac76e948.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <ebfe7aa7f409513d5e04ac407700a8bbac76e948.camel@mailbox.org>
X-Spamd-Bar: ----
Message-ID-Hash: 5IUPQ5STSF2I7SEIH2D5LQ5K5WTUMKOC
X-Message-ID-Hash: 5IUPQ5STSF2I7SEIH2D5LQ5K5WTUMKOC
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/8] dma-buf: inline spinlock for fence protection v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5IUPQ5STSF2I7SEIH2D5LQ5K5WTUMKOC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 503DF1255B0
X-Rspamd-Action: no action

T24gMi8xMS8yNiAxMDo1MCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiBPbiBUdWUsIDIwMjYt
MDItMTAgYXQgMTE6MDEgKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQouLi4NCj4+IFVz
aW5nIGEgcGVyLWZlbmNlIHNwaW5sb2NrIGFsbG93cyBjb21wbGV0ZWx5IGRlY291cGxpbmcgc3Bp
bmxvY2sgcHJvZHVjZXINCj4+IGFuZCBjb25zdW1lciBsaWZlIHRpbWVzLCBzaW1wbGlmeWluZyB0
aGUgaGFuZGxpbmcgaW4gbW9zdCB1c2UgY2FzZXMuDQo+IA0KPiBUaGF0J3MgYSBnb29kIGNvbW1p
dCBtZXNzYWdlIGJ0dywgZGV0YWlsaW5nIHdoYXQgdGhlIG1vdGl2YXRpb24gaXMuDQo+IFdvdWxk
IGJlIGdyZWF0IHRvIHNlZSBtZXNzYWdlcyBsaWtlIHRoYXQgbW9yZSBmcmVxdWVudGx5IDpdDQoN
ClllYWgsIGJ1dCB0aGV5IGFyZSBub3Qgc28gZWFzeSB0byB3cml0ZS4NCg0KPj4gwqAJdHJhY2Vf
ZG1hX2ZlbmNlX2luaXQoZmVuY2UpOw0KPj4gQEAgLTEwOTEsNyArMTA5NCw3IEBAIF9fZG1hX2Zl
bmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vf
b3BzICpvcHMsDQo+PiDCoCAqIGRtYV9mZW5jZV9pbml0IC0gSW5pdGlhbGl6ZSBhIGN1c3RvbSBm
ZW5jZS4NCj4+IMKgICogQGZlbmNlOiB0aGUgZmVuY2UgdG8gaW5pdGlhbGl6ZQ0KPj4gwqAgKiBA
b3BzOiB0aGUgZG1hX2ZlbmNlX29wcyBmb3Igb3BlcmF0aW9ucyBvbiB0aGlzIGZlbmNlDQo+PiAt
ICogQGxvY2s6IHRoZSBpcnFzYWZlIHNwaW5sb2NrIHRvIHVzZSBmb3IgbG9ja2luZyB0aGlzIGZl
bmNlDQo+PiArICogQGxvY2s6IG9wdGlvbmFsIGlycXNhZmUgc3BpbmxvY2sgdG8gdXNlIGZvciBs
b2NraW5nIHRoaXMgZmVuY2UNCj4+IMKgICogQGNvbnRleHQ6IHRoZSBleGVjdXRpb24gY29udGV4
dCB0aGlzIGZlbmNlIGlzIHJ1biBvbg0KPj4gwqAgKiBAc2Vxbm86IGEgbGluZWFyIGluY3JlYXNp
bmcgc2VxdWVuY2UgbnVtYmVyIGZvciB0aGlzIGNvbnRleHQNCj4+IMKgICoNCj4+IEBAIC0xMTAx
LDYgKzExMDQsMTAgQEAgX19kbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwg
Y29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4+IMKgICoNCj4+IMKgICogY29udGV4
dCBhbmQgc2Vxbm8gYXJlIHVzZWQgZm9yIGVhc3kgY29tcGFyaXNvbiBiZXR3ZWVuIGZlbmNlcywg
YWxsb3dpbmcNCj4+IMKgICogdG8gY2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIgYnkgc2ltcGx5
IHVzaW5nIGRtYV9mZW5jZV9sYXRlcigpLg0KPj4gKyAqDQo+PiArICogSXQgaXMgc3Ryb25nbHkg
ZGlzY291cmFnZWQgdG8gcHJvdmlkZSBhbiBleHRlcm5hbCBsb2NrLiBUaGlzIGlzIG9ubHkgYWxs
b3dlZA0KPiANCj4gInN0cm9uZ2x5IGRpc2NvdXJhZ2VkIFvigKZdIGJlY2F1c2UgdGhpcyBkb2Vz
IG5vdCBkZWNvdXBsZSBsb2NrIGFuZCBmZW5jZQ0KPiBsaWZlIHRpbWVzLiIgPw0KDQpHb29kIHBv
aW50LCBhZGRlZCBzb21lIG1vcmUgdGV4dC4NCiANCj4+ICsgKiBmb3IgbGVnYWN5IHVzZSBjYXNl
cyB3aGVuIG11bHRpcGxlIGZlbmNlcyBuZWVkIHRvIGJlIHByZXZlbnRlZCBmcm9tDQo+PiArICog
c2lnbmFsaW5nIG91dCBvZiBvcmRlci4NCj4gDQo+IEkgdGhpbmsgb3VyIHByZXZpb3VzIGRpc2N1
c3Npb25zIHJldmVhbGVkIHRoYXQgdGhlIGV4dGVybmFsIGxvY2sgZG9lcw0KPiBub3QgZXZlbiBo
ZWxwIHdpdGggdGhhdCwgZG9lcyBpdD8NCg0KV2VsbCBvbmx5IHdoZW4geW91IHByb3ZpZGUgYSAt
PnNpZ25hbGVkKCkgY2FsbGJhY2sgaW4gdGhlIGRtYV9mZW5jZV9vcHMuDQoNClRoZSByZWFzb24g
d2UgaGF2ZSBzbyBtdWNoIGRpZmZlcmVudCBhcHByb2FjaGVzIGluIHRoZSBkbWFfZmVuY2UgaGFu
ZGxpbmcgaXMgYmVjYXVzZSBpdCBpcyBiYXNpY2FsbHkgdGhlIHVuaWZpY2F0aW9uIG11bHRpcGxl
IGRpZmZlcmVudCBkcml2ZXIgaW1wbGVtZW50YXRpb25zIHdoaWNoIGFsbCB0YXJnZXRlZCBtb3Jl
IG9yIGxlc3MgZGlmZmVyZW50IHVzZSBjYXNlcy4NCg0KPj4gKyAqIGZvciBsZWdhY3kgdXNlIGNh
c2VzIHdoZW4gbXVsdGlwbGUgZmVuY2VzIG5lZWQgdG8gYmUgcHJldmVudGVkIGZyb20NCj4+ICsg
KiBzaWduYWxpbmcgb3V0IG9mIG9yZGVyLg0KPj4gwqAgKi8NCj4+IMKgdm9pZA0KPj4gwqBkbWFf
ZmVuY2VfaW5pdDY0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBjb25zdCBzdHJ1Y3QgZG1hX2Zl
bmNlX29wcyAqb3BzLA0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVn
LmggYi9kcml2ZXJzL2RtYS1idWYvc3luY19kZWJ1Zy5oDQo+PiBpbmRleCAwMmFmMzQ3MjkzZDAu
LmM0OTMyNDUwNWIyMCAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVn
LmgNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9zeW5jX2RlYnVnLmgNCj4+IEBAIC00Nyw3ICs0
Nyw3IEBAIHN0cnVjdCBzeW5jX3RpbWVsaW5lIHsNCj4+IMKgDQo+PiDCoHN0YXRpYyBpbmxpbmUg
c3RydWN0IHN5bmNfdGltZWxpbmUgKmRtYV9mZW5jZV9wYXJlbnQoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UpDQo+PiDCoHsNCj4+IC0JcmV0dXJuIGNvbnRhaW5lcl9vZihmZW5jZS0+bG9jaywgc3Ry
dWN0IHN5bmNfdGltZWxpbmUsIGxvY2spOw0KPj4gKwlyZXR1cm4gY29udGFpbmVyX29mKGZlbmNl
LT5leHRlcm5fbG9jaywgc3RydWN0IHN5bmNfdGltZWxpbmUsIGxvY2spOw0KPiANCj4gWW91J3Jl
IHN1cmUgdGhhdCB0aGlzIHdpbGwgbmV2ZXIgaGF2ZSB0byBjaGVjayBmb3IgdGhlIGZsYWc/DQoN
ClllcywgdGhlIGNvZGUgd291bGQgaGF2ZSBjcmFzaGVkIGJlZm9yZSBpZiBhbnl0aGluZyB0aGFu
IGEgc3luY19wdCBjcmVhdGVkIGJ5IHN5bmNfcHRfY3JlYXRlIHdhcyBlbmNvdW50ZXJlZCBoZXJl
Lg0KDQpXZSBjb3VsZCBkcm9wIHRoZSB3cmFwcGVyLCBtb3ZlIHRoZSBjYXN0IHRvIHRoZSBvbmx5
IHBsYWNlIHdoZXJlIGl0IG1hdHRlcnMgYW5kIGRvY3VtZW50IHRoZSB3aHkgYW5kIHdoYXQgd2l0
aCBhIGNvZGUgY29tbWVudC4uLi4gYnV0IHRoaXMgaXMgYWxsIGRlYWQgY29kZSB3aGljaCBicmVh
a3Mgc29tZSBvZiB0aGUgZnVuZGFtZW50YWwgZG1hLWZlbmNlIHJ1bGVzIGFuZCBpdCBpcyBvbmx5
IGxlZnQgaGVyZSBiZWNhdXNlIHdlIGNhbid0IGJyZWFrIHRoZSBVQVBJLg0KPj4gwqBzdGF0aWMg
Y29uc3QgY2hhciAqeGVfaHdfZmVuY2VfZ2V0X2RyaXZlcl9uYW1lKHN0cnVjdCBkbWFfZmVuY2Ug
KmRtYV9mZW5jZSkNCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oIGIv
aW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4gaW5kZXggODhjODQyZmMzNWQ1Li42ZWFiYmIx
YzQ3MWMgMTAwNjQ0DQo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+PiArKysg
Yi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+PiBAQCAtMzQsNyArMzQsOCBAQCBzdHJ1Y3Qg
c2VxX2ZpbGU7DQo+PiDCoCAqIEBvcHM6IGRtYV9mZW5jZV9vcHMgYXNzb2NpYXRlZCB3aXRoIHRo
aXMgZmVuY2UNCj4+IMKgICogQHJjdTogdXNlZCBmb3IgcmVsZWFzaW5nIGZlbmNlIHdpdGgga2Zy
ZWVfcmN1DQo+PiDCoCAqIEBjYl9saXN0OiBsaXN0IG9mIGFsbCBjYWxsYmFja3MgdG8gY2FsbA0K
Pj4gLSAqIEBsb2NrOiBzcGluX2xvY2tfaXJxc2F2ZSB1c2VkIGZvciBsb2NraW5nDQo+PiArICog
QGV4dGVybl9sb2NrOiBleHRlcm5hbCBzcGluX2xvY2tfaXJxc2F2ZSB1c2VkIGZvciBsb2NraW5n
DQo+IA0KPiBBZGQgYSAiKGRlcHJlY2F0ZWQpIiA/DQoNCkRvbmUuDQoNCj4gDQo+PiArICogQGlu
bGluZV9sb2NrOiBhbHRlcm5hdGl2ZSBpbnRlcm5hbCBzcGluX2xvY2tfaXJxc2F2ZSB1c2VkIGZv
ciBsb2NraW5nDQo+PiDCoCAqIEBjb250ZXh0OiBleGVjdXRpb24gY29udGV4dCB0aGlzIGZlbmNl
IGJlbG9uZ3MgdG8sIHJldHVybmVkIGJ5DQo+PiDCoCAqwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG1h
X2ZlbmNlX2NvbnRleHRfYWxsb2MoKQ0KPj4gwqAgKiBAc2Vxbm86IHRoZSBzZXF1ZW5jZSBudW1i
ZXIgb2YgdGhpcyBmZW5jZSBpbnNpZGUgdGhlIGV4ZWN1dGlvbiBjb250ZXh0LA0KPj4gQEAgLTQ5
LDYgKzUwLDcgQEAgc3RydWN0IHNlcV9maWxlOw0KPj4gwqAgKiBvZiB0aGUgdGltZS4NCj4+IMKg
ICoNCj4+IMKgICogRE1BX0ZFTkNFX0ZMQUdfSU5JVElBTElaRURfQklUIC0gZmVuY2Ugd2FzIGlu
aXRpYWxpemVkDQo+PiArICogRE1BX0ZFTkNFX0ZMQUdfSU5MSU5FX0xPQ0tfQklUIC0gdXNlIGlu
bGluZSBzcGlubG9jayBpbnN0ZWFkIG9mIGV4dGVybmFsIG9uZQ0KPj4gwqAgKiBETUFfRkVOQ0Vf
RkxBR19TSUdOQUxFRF9CSVQgLSBmZW5jZSBpcyBhbHJlYWR5IHNpZ25hbGVkDQo+PiDCoCAqIERN
QV9GRU5DRV9GTEFHX1RJTUVTVEFNUF9CSVQgLSB0aW1lc3RhbXAgcmVjb3JkZWQgZm9yIGZlbmNl
IHNpZ25hbGluZw0KPj4gwqAgKiBETUFfRkVOQ0VfRkxBR19FTkFCTEVfU0lHTkFMX0JJVCAtIGVu
YWJsZV9zaWduYWxpbmcgbWlnaHQgaGF2ZSBiZWVuIGNhbGxlZA0KPj4gQEAgLTY2LDcgKzY4LDEw
IEBAIHN0cnVjdCBzZXFfZmlsZTsNCj4+IMKgICogYmVlbiBjb21wbGV0ZWQsIG9yIG5ldmVyIGNh
bGxlZCBhdCBhbGwuDQo+PiDCoCAqLw0KPj4gwqBzdHJ1Y3QgZG1hX2ZlbmNlIHsNCj4+IC0Jc3Bp
bmxvY2tfdCAqbG9jazsNCj4+ICsJdW5pb24gew0KPj4gKwkJc3BpbmxvY2tfdCAqZXh0ZXJuX2xv
Y2s7DQo+PiArCQlzcGlubG9ja190IGlubGluZV9sb2NrOw0KPj4gKwl9Ow0KPj4gwqAJY29uc3Qg
c3RydWN0IGRtYV9mZW5jZV9vcHMgX19yY3UgKm9wczsNCj4+IMKgCS8qDQo+PiDCoAkgKiBXZSBj
bGVhciB0aGUgY2FsbGJhY2sgbGlzdCBvbiBrcmVmX3B1dCBzbyB0aGF0IGJ5IHRoZSB0aW1lIHdl
DQo+PiBAQCAtMTAwLDYgKzEwNSw3IEBAIHN0cnVjdCBkbWFfZmVuY2Ugew0KPj4gwqANCj4+IMKg
ZW51bSBkbWFfZmVuY2VfZmxhZ19iaXRzIHsNCj4+IMKgCURNQV9GRU5DRV9GTEFHX0lOSVRJQUxJ
WkVEX0JJVCwNCj4+ICsJRE1BX0ZFTkNFX0ZMQUdfSU5MSU5FX0xPQ0tfQklULA0KPiANCj4gSnVz
dCBhc2tpbmcgYWJvdXQgYSBuaXQ6IHdoYXQncyB0aGUgb3JkZXIgaGVyZSwgYWx3YXlzIGFscGhh
YmV0aWNhbGx5Pw0KDQpJbiB3aGljaCB0aGUgZmxhZ3MgYXJlIHVzZWQgaW4gdGhlIGNvZGUgZmxv
dy4NCg0KPj4gwqAJRE1BX0ZFTkNFX0ZMQUdfU0VRTk82NF9CSVQsDQo+PiDCoAlETUFfRkVOQ0Vf
RkxBR19TSUdOQUxFRF9CSVQsDQo+PiDCoAlETUFfRkVOQ0VfRkxBR19USU1FU1RBTVBfQklULA0K
Pj4gQEAgLTM4MSwxMSArMzg3LDEyIEBAIGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUoc3RydWN0IGRt
YV9mZW5jZSBfX3JjdSAqKmZlbmNlcCkNCj4+IMKgICogZG1hX2ZlbmNlX3NwaW5sb2NrIC0gcmV0
dXJuIHBvaW50ZXIgdG8gdGhlIHNwaW5sb2NrIHByb3RlY3RpbmcgdGhlIGZlbmNlDQo+PiDCoCAq
IEBmZW5jZTogdGhlIGZlbmNlIHRvIGdldCB0aGUgbG9jayBmcm9tDQo+PiDCoCAqDQo+PiAtICog
UmV0dXJuIHRoZSBwb2ludGVyIHRvIHRoZSBleHRlcm4gbG9jay4NCj4+ICsgKiBSZXR1cm4gZWl0
aGVyIHRoZSBwb2ludGVyIHRvIHRoZSBlbWJlZGRlZCBvciB0aGUgZXh0ZXJuYWwgc3BpbiBsb2Nr
Lg0KPj4gwqAgKi8NCj4+IMKgc3RhdGljIGlubGluZSBzcGlubG9ja190ICpkbWFfZmVuY2Vfc3Bp
bmxvY2soc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+PiDCoHsNCj4+IC0JcmV0dXJuIGZlbmNl
LT5sb2NrOw0KPj4gKwlyZXR1cm4gdGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfSU5MSU5FX0xPQ0tf
QklULCAmZmVuY2UtPmZsYWdzKSA/DQo+PiArCQkmZmVuY2UtPmlubGluZV9sb2NrIDogZmVuY2Ut
PmV4dGVybl9sb2NrOw0KPiANCj4gSSBwZXJzb25hbGx5IGFtIG5vdCBhIGZhbiBvZiB1c2luZyAn
PycgZm9yIGFueXRoaW5nIGxvbmdlciB0aGFuIDEgbGluZQ0KPiBhbmQgdGhpbmsgdGhhdA0KPiAN
Cj4gaWYgKGNvbmRpdGlvbikNCj4gICByZXR1cm4gYTsNCj4gDQo+IHJldHVybiBiOw0KPiANCj4g
aXMgbXVjaCBiZXR0ZXIgcmVhZGFibGUuDQoNCk1obSwgSSBkaXNhZ3JlZSBpbiB0aGlzIHBhcnRp
Y3VsYXIgY2FzZS4gRXNwZWNpYWxseSB0aGF0IHlvdSBoYXZlIGJvdGggcG9zc2liaWxpdGllcyBz
aWRlIGJ5IHNpZGUgbWFrZXMgaXQgbW9yZSByZWFkYWJsZSBJIHRoaW5rLg0KDQpSZWdhcmRzLA0K
Q2hyaXN0aWFuLg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
