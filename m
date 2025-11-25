Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACmmOmcA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:43 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FE8410CB8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3A58410D7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:29:42 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by lists.linaro.org (Postfix) with ESMTPS id E94BA3F7DE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 19:40:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=JwBbJ3vS;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.128.54 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4779a637712so36507285e9.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 11:40:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764099619; x=1764704419; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F+mYioxWgzcz5tqtizOnI1Ne46KDyU7fg8afEAzl4P4=;
        b=JwBbJ3vSq2zhpcERV8LFGXz8wD7fg1B9qtP5sLZdEd5gxihPKMlA8NllUzC36eqGOG
         36zOB7lzpRibp7jLcf6zIGbwzB8diw39/0dSDf5jUjVUjwYcy1ZkVNeHmmTgqNkKjPWz
         yTtM8ygkqSH4bFv1w1HcYOfXBddmTcHIVD9rucVw3Ixa67hFcFFIy3FURE6fsXG1IOFP
         R8ydz9pViKZ7qphsOGFoCjhWdbqNSPLF6XKjCJ5PU4SDpwywA1AGzVPvpEYpZCdSQ5tC
         ddONrUAE6qlDPcCjFN8WD4Xx5849YIjhplzQgzqdpadgp272TgFtY73jDc+j5NGvKGsU
         i0HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764099619; x=1764704419;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F+mYioxWgzcz5tqtizOnI1Ne46KDyU7fg8afEAzl4P4=;
        b=tPErsWDENzq4MQ6wSd9p5jt04gSUGrUIysWON837up74rUEn19yBkKtwiNh2Bk0UV2
         PN6dGfZcvfop2wrvn8Hkp79w4sjb7ODTdRECNQxRNN0nB5BhPCwPiFwq2rdTlQa2bLT1
         67pe7oQgIpHmhERGLLgL3N3Al4Y6jQLMMlchDhyjlKbJ+sC8MnUDzDIMNZVN2gOVTJ9k
         nCdp+hupD7L8nwXMHE4XpPmEct0zKA3rpu66qOvMVBiAIC57EnjPm75UgAxGhUgprncl
         DilhoFezv0PNDvDnJZ2xNY2tL5gc0Kzg0SHcAgZfZFDx+vh2Fu5D7YBDWvpqA/mbQFuY
         9s2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWR7rgJ3W9Sx07geKt/2zt3FSB5xXOkpIWqtrjv8SFH7P/kB0Ch4euW+VB/R3kjEBCIUia4ll2dAAR7YSBd@lists.linaro.org
X-Gm-Message-State: AOJu0YzjE6glP0f6/N73L4sc9Y86HwZW2a8+vQ87fD0t8mU72d4SnqTB
	NEVbENZJ4LBkuj+DYGsZ2MSkLoe6E997uHmcNYkLWLgykkSs/ctqbCqQ
X-Gm-Gg: ASbGncvhHa2ul0szMJAphq8tn48ScWPHMCRHLIbHupBg9tLegaCkCAPiaUV6EG0WPAm
	haBfA3NpZONw42dyOpqi0adDaAQqvrK5Pvxk2inv2MXYY80daEp6/92+8tJphOGNXSHhBrO+nlK
	Qe2nvRnrRV+7841OLTh05FwpviK4iPkCSbDy+8YFxW8UdkjG3Po2nVd/HOfzVSSIz6lRwKdR5Gd
	/6pSaoJ4FFsfgo0ERz3EVd4eNLFJYV/O3jzgjp0uzBigGw5ib21M/bJ9DC7CmM9MdCDmho2TaRH
	8aGZsOcn33vqe9ulCIYVlAt+GGYQ8DSvVspX33z8ifO611iHn5z6JPAV8NAvN29r0xwUJ1Ey63R
	5Mw4JWd37Js1aKb2vnn0xBawZjPO/uJQkyFCNYSBHDvSOJI/lNHcmLT4/M4qD5ZHIlcSHqwhsJz
	/m0G0ty2d9cMcaW9afgh8dXh5UGb4uboRjWHSmj0rckpQLnoQ3LlSPKzReA2ZYJA==
X-Google-Smtp-Source: AGHT+IFpWZeUDyopyguGNmEbgYIRF/Mo2eq9v5oFLJoUC93zNjBvPZO9k5dPUiOZ58x4X8B/LhlhcQ==
X-Received: by 2002:a05:600c:1c88:b0:477:9cdb:e337 with SMTP id 5b1f17b1804b1-477c0165badmr197645055e9.7.1764099618711;
        Tue, 25 Nov 2025 11:40:18 -0800 (PST)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790add608bsm5321225e9.5.2025.11.25.11.40.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 11:40:18 -0800 (PST)
Message-ID: <478ea064-3a2f-4529-81f3-ac2346fe32f0@gmail.com>
Date: Tue, 25 Nov 2025 19:40:15 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-block@vger.kernel.org, io-uring@vger.kernel.org
References: <cover.1763725387.git.asml.silence@gmail.com>
 <fd10fe48-f278-4ed0-b96b-c4f5a91b7f95@amd.com>
 <905ff009-0e02-4a5b-aa8d-236bfc1a404e@gmail.com>
 <53be1078-4d67-470f-b1af-1d9ac985fbe2@amd.com>
 <a80a1e7d-e387-448f-8095-0aa22a07af17@gmail.com>
 <0d0d2a6a-a90c-409c-8d60-b17bad32af94@amd.com>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <0d0d2a6a-a90c-409c-8d60-b17bad32af94@amd.com>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PDZPDGR4SOOV2AJIWCB5SM4PPANMVTDW
X-Message-ID-Hash: PDZPDGR4SOOV2AJIWCB5SM4PPANMVTDW
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:59 +0000
CC: Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 00/11] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PDZPDGR4SOOV2AJIWCB5SM4PPANMVTDW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[3403];
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
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.852];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: B8FE8410CB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMTEvMjUvMjUgMTQ6MjEsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IE9uIDExLzI1LzI1
IDE0OjUyLCBQYXZlbCBCZWd1bmtvdiB3cm90ZToNCj4+IE9uIDExLzI0LzI1IDE0OjE3LCBDaHJp
c3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IE9uIDExLzI0LzI1IDEyOjMwLCBQYXZlbCBCZWd1bmtv
diB3cm90ZToNCj4+Pj4gT24gMTEvMjQvMjUgMTA6MzMsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+Pj4+PiBPbiAxMS8yMy8yNSAyMzo1MSwgUGF2ZWwgQmVndW5rb3Ygd3JvdGU6DQo+Pj4+Pj4g
UGlja2luZyB1cCB0aGUgd29yayBvbiBzdXBwb3J0aW5nIGRtYWJ1ZiBpbiB0aGUgcmVhZC93cml0
ZSBwYXRoLg0KPj4+Pj4NCj4+Pj4+IElJUkMgdGhhdCB3b3JrIHdhcyBjb21wbGV0ZWx5IHN0b3Bw
ZWQgYmVjYXVzZSBpdCB2aW9sYXRlZCBjb3JlIGRtYV9mZW5jZSBhbmQgRE1BLWJ1ZiBydWxlcyBh
bmQgYWZ0ZXIgc29tZSBwcml2YXRlIGRpc2N1c3Npb24gd2FzIGNvbnNpZGVyZWQgbm90IGRvYWJs
ZSBpbiBnZW5lcmFsLg0KPj4+Pj4NCj4+Pj4+IE9yIGFtIEkgbWl4aW5nIHNvbWV0aGluZyB1cCBo
ZXJlPw0KPj4+Pg0KPj4+PiBUaGUgdGltZSBnYXAgaXMgcHVyZWx5IGR1ZSB0byBtZSBiZWluZyBi
dXN5LiBJIHdhc24ndCBDQydlZCB0byB0aG9zZSBwcml2YXRlDQo+Pj4+IGRpc2N1c3Npb25zIHlv
dSBtZW50aW9uZWQsIGJ1dCB0aGUgdjEgZmVlZGJhY2sgd2FzIHRvIHVzZSBkeW5hbWljIGF0dGFj
aG1lbnRzDQo+Pj4+IGFuZCBhdm9pZCBwYXNzaW5nIGRtYSBhZGRyZXNzIGFycmF5cyBkaXJlY3Rs
eS4NCj4+Pj4NCj4+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2NvdmVyLjE3NTEwMzU4
MjAuZ2l0LmFzbWwuc2lsZW5jZUBnbWFpbC5jb20vDQo+Pj4+DQo+Pj4+IEknbSBsb3N0IG9uIHdo
YXQgcGFydCBpcyBub3QgZG9hYmxlLiBDYW4geW91IGVsYWJvcmF0ZSBvbiB0aGUgY29yZQ0KPj4+
PiBkbWEtZmVuY2UgZG1hLWJ1ZiBydWxlcz8NCj4+Pg0KPj4+IEkgbW9zdCBsaWtlbHkgbWl4ZWQg
dGhhdCB1cCwgaW4gb3RoZXIgd29yZHMgdGhhdCB3YXMgYSBkaWZmZXJlbnQgZGlzY3Vzc2lvbi4N
Cj4+Pg0KPj4+IFdoZW4geW91IHVzZSBkbWFfZmVuY2VzIHRvIGluZGljYXRlIGFzeW5jIGNvbXBs
ZXRpb24gb2YgZXZlbnRzIHlvdSBuZWVkIHRvIGJlIHN1cGVyIGR1cGVyIGNhcmVmdWwgdGhhdCB5
b3Ugb25seSBkbyB0aGlzIGZvciBpbiBmbGlnaHQgZXZlbnRzLCBoYXZlIHRoZSBmZW5jZSBjcmVh
dGlvbiBpbiB0aGUgcmlnaHQgb3JkZXIgZXRjLi4uDQo+Pg0KPj4gSSdtIGN1cmlvdXMsIHdoYXQg
Y2FuIGhhcHBlbiBpZiB0aGVyZSBpcyBuZXcgSU8gdXNpbmcgYQ0KPj4gbW92ZV9ub3RpZnkoKWVk
IG1hcHBpbmcsIGJ1dCBsZXQncyBzYXkgaXQncyBndWFyYW50ZWVkIHRvIGNvbXBsZXRlDQo+PiBz
dHJpY3RseSBiZWZvcmUgZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KCkgYW5kIHRoZSBmZW5jZSBp
cyBzaWduYWxlZD8NCj4+IElzIHRoZXJlIHNvbWUgbG9zcyBvZiBkYXRhIG9yIGNvcnJ1cHRpb24g
dGhhdCBjYW4gaGFwcGVuPw0KPiANCj4gVGhlIHByb2JsZW0gaXMgdGhhdCB5b3UgY2FuJ3QgZ3Vh
cmFudGVlIHRoYXQgYmVjYXVzZSB5b3UgcnVuIGludG8gZGVhZGxvY2tzLg0KPiANCj4gQXMgc29v
biBhcyBhIGRtYV9mZW5jZSgpIGlzIGNyZWF0ZWQgYW5kIHB1Ymxpc2hlZCBieSBjYWxsaW5nIGFk
ZF9mZW5jZSBpdCBjYW4gYmUgbWVtb3J5IG1hbmFnZW1lbnQgbG9vcHMgYmFjayBhbmQgZGVwZW5k
cyBvbiB0aGF0IGZlbmNlLg0KDQpJIHRoaW5rIEkgZ290IHRoZSBpZGVhLCB0aGFua3MNCg0KPiBT
byB5b3UgYWN0dWFsbHkgY2FuJ3QgaXNzdWUgYW55IG5ldyBJTyB3aGljaCBtaWdodCBibG9jayB0
aGUgdW5tYXAgb3BlcmF0aW9uLg0KPiANCj4+DQo+PiBzZ190YWJsZSA9IG1hcF9hdHRhY2goKcKg
wqDCoMKgwqDCoMKgwqAgfA0KPj4gbW92ZV9ub3RpZnkoKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8DQo+PiAgwqAgLT4gYWRkX2ZlbmNlKGZlbmNlKcKgwqDCoMKgwqDCoMKg
wqDCoMKgIHwNCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8IGlzc3VlX0lPKHNnX3RhYmxlKQ0KPj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgLy8g
SU8gY29tcGxldGVkDQo+PiB1bm1hcF9hdHRhY2htZW50KHNnX3RhYmxlKcKgwqDCoMKgwqAgfA0K
Pj4gc2lnbmFsX2ZlbmNlKGZlbmNlKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8DQo+Pg0KPj4+
IEZvciBleGFtcGxlIG9uY2UgdGhlIGZlbmNlIGlzIGNyZWF0ZWQgeW91IGNhbid0IG1ha2UgYW55
IG1lbW9yeSBhbGxvY2F0aW9ucyBhbnkgbW9yZSwgdGhhdCdzIHdoeSB3ZSBoYXZlIHRoaXMgZGFu
Y2Ugb2YgcmVzZXJ2aW5nIGZlbmNlIHNsb3RzLCBjcmVhdGluZyB0aGUgZmVuY2UgYW5kIHRoZW4g
YWRkaW5nIGl0Lg0KPj4NCj4+IExvb2tzIEkgaGF2ZSBzb21lIHRlcm1pbm9sb2d5IGdhcCBoZXJl
LiBCeSAibWVtb3J5IGFsbG9jYXRpb25zIiB5b3UNCj4+IGRvbid0IG1lYW4ga21hbGxvYywgcmln
aHQ/IEkgYXNzdW1lIGl0J3MgYWJvdXQgbmV3IHVzZXJzIG9mIHRoZQ0KPj4gbWFwcGluZy4NCj4g
DQo+IGttYWxsb2MoKSBhcyB3ZWxsIGFzIGdldF9mcmVlX3BhZ2UoKSBpcyBleGFjdGx5IHdoYXQg
aXMgbWVhbnQgaGVyZS4NCj4gDQo+IFlvdSBjYW4ndCBtYWtlIGFueSBtZW1vcnkgYWxsb2NhdGlv
biBhbnkgbW9yZSBhZnRlciBjcmVhdGluZy9wdWJsaXNoaW5nIGEgZG1hX2ZlbmNlLg0KDQpJIHNl
ZSwgdGhhbmtzDQoNCj4gVGhlIHVzdWFsbHkgZmxvdyBpcyB0aGUgZm9sbG93aW5nOg0KPiANCj4g
MS4gTG9jayBkbWFfcmVzdiBvYmplY3QNCj4gMi4gUHJlcGFyZSBJL08gb3BlcmF0aW9uLCBtYWtl
IGFsbCBtZW1vcnkgYWxsb2NhdGlvbnMgZXRjLi4uDQo+IDMuIEFsbG9jYXRlIGRtYV9mZW5jZSBv
YmplY3QNCj4gNC4gUHVzaCBJL08gb3BlcmF0aW9uIHRvIHRoZSBIVywgbWFraW5nIHN1cmUgdGhh
dCB5b3UgZG9uJ3QgYWxsb2NhdGUgbWVtb3J5IGFueSBtb3JlLg0KPiA1LiBDYWxsIGRtYV9yZXN2
X2FkZF9mZW5jZSh3aXRoIGZlbmNlIGFsbG9jYXRlIGluICMzKS4NCj4gNi4gVW5sb2NrIGRtYV9y
ZXN2IG9iamVjdA0KPiANCj4gSWYgeW91IHN0cmlkZSBmcm9tIHRoYXQgeW91IG1vc3QgbGlrZWx5
IGVuZCB1cCBpbiBhIGRlYWRsb2NrIHNvb25lciBvciBsYXRlci4NCi0tIA0KUGF2ZWwgQmVndW5r
b3YNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
