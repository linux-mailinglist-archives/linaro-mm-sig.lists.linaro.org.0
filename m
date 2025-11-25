Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OqYC1MA4Wk7oQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:23 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DC444410CA0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:29:22 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ABD6F40A55
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:29:21 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by lists.linaro.org (Postfix) with ESMTPS id 9AF0D3F712
	for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 13:52:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=YnVpZwR6;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.53 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42b387483bbso4193002f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Nov 2025 05:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764078741; x=1764683541; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kHOesweq24KF358s0vEumPsOYuhj+3ibk2FmOjZUv+4=;
        b=YnVpZwR6cCWfIa+fXdnkwlTo0AJB68MK9fSkTQtB1/rsriOea42GtNj+oyKZtY7uw2
         JjZGv/gHqK/JsTZqRxnQ/36g249wxlJa95WuFI0KRhXufeb/1ovuz2cu/lYn5XCC12jd
         muFEDwzcDpN2pTU+p1ayztHtuvOoM6RPFVxrRGDryroNiy37dWCAk4IBlZVFiJ2BVKoq
         mu5ivWc8sZ9S+nmZi2TyvzJxkXrItlUIPP5A5jhOobmFNHg+ukIfAaTK3wa+yO6DCwe6
         NZd7YkZqXiGre9sDuKhFpXSKN6idQxYMl+GEJOXWAN6WG3+v7dnbUB83ohChw52/eyZv
         e+Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764078741; x=1764683541;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kHOesweq24KF358s0vEumPsOYuhj+3ibk2FmOjZUv+4=;
        b=Za9wRY+1e8euiyfOM61PEAmzbw6xz0/iWySGRQg8GCaf5xc8rnYM6V3zZEtc4zBp9m
         7j/51cM8dBRH59kOWRnasxp6pjCD+E2zF7BeegKq2aetzyTUf5jlQhlORZmyqFVarAVB
         v5qnvQCRcYn6qcpWlhj8HnDD3UosWxBpyFKAP/e6GF/ky2eXtPIjLOTEO0Gv9BYqlsZQ
         V4zLeiRM0RDSutZndQR05oz6ZGgHc5jrw09oF6NsxRnT5Zpo3JhiL6IxRsvyxK7q5X3i
         bF3DRwg/MHXJCeTvd/Wc4csLUAzcpkM2262zY+2466P6KcSdeTd/mAX4gcwUwToS0Fnt
         ibMA==
X-Forwarded-Encrypted: i=1; AJvYcCVC1/vgypaMesFvoVo0F0LG9Zjc3sH88EGJDd9HAk6qVnhU12hvqvIonmZw79IoIPYC2hPDDjURoZ2D6gmV@lists.linaro.org
X-Gm-Message-State: AOJu0YxqkGQFgpoDBviRTC7dyHOYeyjp1Lo+4JlQ+AUAikkmpGpg9d74
	khWRmLy86NpN04O6B0k5JBtcodsJANqVm6Jp28PxhB3f6LelaiMw+IJr
X-Gm-Gg: ASbGncvvKE273gs9HOc15FF3M+g67jvbw1ONyfNc+/Oxcoc2ROV3lHbEqM+v+JHQdSD
	sldz2+WOfMqYDSoKNFxheiwLh+ln+6YscUEQiMhLCp+Ch+LWJ9FlgfIeyTOV9QXG38WkthVnZnQ
	6sKxTnuRE8Li9rx/Q6kDJiEifL6vUJJIa21j+G+zDLnCLsZRTunHk3rlaCQZE6plkPdJ2CM2sW5
	OKzbzz9FJh/bov5kx/eOu7R3IWgB5KYV29/rCuzEbfElM+4xbvPqwCPbaMad7gKouwharQ3Anzb
	UvkMQuKNma8ZGxQ9wcMDgqMw5HrgvxpfCodGDjF1e4mxDxmvw7XUnJwtA4YKf4o81usjUPVedD/
	/T/tfpOpAmi/Jq1XtkV7DYPrdy9RMutVF27OGdsmcXpdCBrQdw3k8Ww9ZFEbTYEs3U5VIVhuS6R
	NbS7VbRXQDSC1vyuecX7dDLvmkNXzZ5j/ZAdnuypAIc2DAs/Go03HZztRpdt2m4WNKzS0YFCfn
X-Google-Smtp-Source: AGHT+IFKl0FSWbmMlOH9ZWfAZWRSmX8BD6ohJLnDHz1PIktPZZElxLDCt4b4SkoYMkjbJJn+KqrIYg==
X-Received: by 2002:a5d:5d81:0:b0:42b:3ded:298d with SMTP id ffacd0b85a97d-42cc1d2d5ebmr16251211f8f.32.1764078741365;
        Tue, 25 Nov 2025 05:52:21 -0800 (PST)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fa3a81sm35280457f8f.26.2025.11.25.05.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 05:52:20 -0800 (PST)
Message-ID: <a80a1e7d-e387-448f-8095-0aa22a07af17@gmail.com>
Date: Tue, 25 Nov 2025 13:52:18 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Pavel Begunkov <asml.silence@gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-block@vger.kernel.org, io-uring@vger.kernel.org
References: <cover.1763725387.git.asml.silence@gmail.com>
 <fd10fe48-f278-4ed0-b96b-c4f5a91b7f95@amd.com>
 <905ff009-0e02-4a5b-aa8d-236bfc1a404e@gmail.com>
 <53be1078-4d67-470f-b1af-1d9ac985fbe2@amd.com>
Content-Language: en-US
In-Reply-To: <53be1078-4d67-470f-b1af-1d9ac985fbe2@amd.com>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 6AP3Z5H72R7THNL445TSQDHQU34WTUGE
X-Message-ID-Hash: 6AP3Z5H72R7THNL445TSQDHQU34WTUGE
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:06:57 +0000
CC: Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 00/11] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6AP3Z5H72R7THNL445TSQDHQU34WTUGE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[3409];
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
	NEURAL_HAM(-0.00)[-0.903];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: DC444410CA0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMTEvMjQvMjUgMTQ6MTcsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+IE9uIDExLzI0LzI1
IDEyOjMwLCBQYXZlbCBCZWd1bmtvdiB3cm90ZToNCj4+IE9uIDExLzI0LzI1IDEwOjMzLCBDaHJp
c3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4+IE9uIDExLzIzLzI1IDIzOjUxLCBQYXZlbCBCZWd1bmtv
diB3cm90ZToNCj4+Pj4gUGlja2luZyB1cCB0aGUgd29yayBvbiBzdXBwb3J0aW5nIGRtYWJ1ZiBp
biB0aGUgcmVhZC93cml0ZSBwYXRoLg0KPj4+DQo+Pj4gSUlSQyB0aGF0IHdvcmsgd2FzIGNvbXBs
ZXRlbHkgc3RvcHBlZCBiZWNhdXNlIGl0IHZpb2xhdGVkIGNvcmUgZG1hX2ZlbmNlIGFuZCBETUEt
YnVmIHJ1bGVzIGFuZCBhZnRlciBzb21lIHByaXZhdGUgZGlzY3Vzc2lvbiB3YXMgY29uc2lkZXJl
ZCBub3QgZG9hYmxlIGluIGdlbmVyYWwuDQo+Pj4NCj4+PiBPciBhbSBJIG1peGluZyBzb21ldGhp
bmcgdXAgaGVyZT8NCj4+DQo+PiBUaGUgdGltZSBnYXAgaXMgcHVyZWx5IGR1ZSB0byBtZSBiZWlu
ZyBidXN5LiBJIHdhc24ndCBDQydlZCB0byB0aG9zZSBwcml2YXRlDQo+PiBkaXNjdXNzaW9ucyB5
b3UgbWVudGlvbmVkLCBidXQgdGhlIHYxIGZlZWRiYWNrIHdhcyB0byB1c2UgZHluYW1pYyBhdHRh
Y2htZW50cw0KPj4gYW5kIGF2b2lkIHBhc3NpbmcgZG1hIGFkZHJlc3MgYXJyYXlzIGRpcmVjdGx5
Lg0KPj4NCj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9jb3Zlci4xNzUxMDM1ODIwLmdp
dC5hc21sLnNpbGVuY2VAZ21haWwuY29tLw0KPj4NCj4+IEknbSBsb3N0IG9uIHdoYXQgcGFydCBp
cyBub3QgZG9hYmxlLiBDYW4geW91IGVsYWJvcmF0ZSBvbiB0aGUgY29yZQ0KPj4gZG1hLWZlbmNl
IGRtYS1idWYgcnVsZXM/DQo+IA0KPiBJIG1vc3QgbGlrZWx5IG1peGVkIHRoYXQgdXAsIGluIG90
aGVyIHdvcmRzIHRoYXQgd2FzIGEgZGlmZmVyZW50IGRpc2N1c3Npb24uDQo+IA0KPiBXaGVuIHlv
dSB1c2UgZG1hX2ZlbmNlcyB0byBpbmRpY2F0ZSBhc3luYyBjb21wbGV0aW9uIG9mIGV2ZW50cyB5
b3UgbmVlZCB0byBiZSBzdXBlciBkdXBlciBjYXJlZnVsIHRoYXQgeW91IG9ubHkgZG8gdGhpcyBm
b3IgaW4gZmxpZ2h0IGV2ZW50cywgaGF2ZSB0aGUgZmVuY2UgY3JlYXRpb24gaW4gdGhlIHJpZ2h0
IG9yZGVyIGV0Yy4uLg0KDQpJJ20gY3VyaW91cywgd2hhdCBjYW4gaGFwcGVuIGlmIHRoZXJlIGlz
IG5ldyBJTyB1c2luZyBhDQptb3ZlX25vdGlmeSgpZWQgbWFwcGluZywgYnV0IGxldCdzIHNheSBp
dCdzIGd1YXJhbnRlZWQgdG8gY29tcGxldGUNCnN0cmljdGx5IGJlZm9yZSBkbWFfYnVmX3VubWFw
X2F0dGFjaG1lbnQoKSBhbmQgdGhlIGZlbmNlIGlzIHNpZ25hbGVkPw0KSXMgdGhlcmUgc29tZSBs
b3NzIG9mIGRhdGEgb3IgY29ycnVwdGlvbiB0aGF0IGNhbiBoYXBwZW4/DQoNCnNnX3RhYmxlID0g
bWFwX2F0dGFjaCgpICAgICAgICAgfA0KbW92ZV9ub3RpZnkoKSAgICAgICAgICAgICAgICAgICB8
DQogICAtPiBhZGRfZmVuY2UoZmVuY2UpICAgICAgICAgICB8DQogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8IGlzc3VlX0lPKHNnX3RhYmxlKQ0KICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAvLyBJTyBjb21wbGV0ZWQNCnVubWFwX2F0dGFjaG1lbnQoc2dfdGFibGUp
ICAgICAgfA0Kc2lnbmFsX2ZlbmNlKGZlbmNlKSAgICAgICAgICAgICB8DQoNCj4gRm9yIGV4YW1w
bGUgb25jZSB0aGUgZmVuY2UgaXMgY3JlYXRlZCB5b3UgY2FuJ3QgbWFrZSBhbnkgbWVtb3J5IGFs
bG9jYXRpb25zIGFueSBtb3JlLCB0aGF0J3Mgd2h5IHdlIGhhdmUgdGhpcyBkYW5jZSBvZiByZXNl
cnZpbmcgZmVuY2Ugc2xvdHMsIGNyZWF0aW5nIHRoZSBmZW5jZSBhbmQgdGhlbiBhZGRpbmcgaXQu
DQoNCkxvb2tzIEkgaGF2ZSBzb21lIHRlcm1pbm9sb2d5IGdhcCBoZXJlLiBCeSAibWVtb3J5IGFs
bG9jYXRpb25zIiB5b3UNCmRvbid0IG1lYW4ga21hbGxvYywgcmlnaHQ/IEkgYXNzdW1lIGl0J3Mg
YWJvdXQgbmV3IHVzZXJzIG9mIHRoZQ0KbWFwcGluZy4NCg0KPj4+IFNpbmNlIEkgZG9uJ3Qgc2Vl
IGFueSBkbWFfZmVuY2UgaW1wbGVtZW50YXRpb24gYXQgYWxsIHRoYXQgbWlnaHQgYWN0dWFsbHkg
YmUgdGhlIGNhc2UuDQo+Pg0KPj4gU2VlIFBhdGNoIDUsIHN0cnVjdCBibGtfbXFfZG1hX2ZlbmNl
LiBJdCdzIHVzZWQgaW4gdGhlIG1vdmVfbm90aWZ5DQo+PiBjYWxsYmFjayBhbmQgaXMgc2lnbmFs
ZWQgd2hlbiBhbGwgaW5mbGlnaHQgSU8gdXNpbmcgdGhlIGN1cnJlbnQNCj4+IG1hcHBpbmcgYXJl
IGNvbXBsZXRlLiBBbGwgbmV3IElPIHJlcXVlc3RzIHdpbGwgdHJ5IHRvIHJlY3JlYXRlIHRoZQ0K
Pj4gbWFwcGluZywgYW5kIGhlbmNlIHBvdGVudGlhbGx5IHdhaXQgd2l0aCBkbWFfcmVzdl93YWl0
X3RpbWVvdXQoKS4NCj4gDQo+IFdpdGhvdXQgbG9va2luZyBhdCB0aGUgY29kZSB0aGF0IGFwcHJv
YWNoIHNvdW5kcyBtb3JlIG9yIGxlc3MgY29ycmVjdCB0byBtZS4NCj4gDQo+Pj4gT24gdGhlIG90
aGVyIGhhbmQgd2UgaGF2ZSBkaXJlY3QgSS9PIGZyb20gRE1BLWJ1ZiB3b3JraW5nIGZvciBxdWl0
ZSBhIHdoaWxlLCBqdXN0IG5vdCB1cHN0cmVhbSBhbmQgd2l0aG91dCBpb191cmluZyBzdXBwb3J0
Lg0KPj4NCj4+IEhhdmUgYW55IHJlZmVyZW5jZT8NCj4gDQo+IFRoZXJlIGlzIGEgV0lQIGZlYXR1
cmUgaW4gQU1EcyBHUFUgZHJpdmVyIHBhY2thZ2UgZm9yIFJPQ20uDQo+IA0KPiBCdXQgdGhhdCBj
YW4ndCBiZSB1c2VkIGFzIGdlbmVyYWwgcHVycG9zZSBETUEtYnVmIGFwcHJvYWNoLCBiZWNhdXNl
IGl0IG1ha2VzIHVzZSBvZiBpbnRlcm5hbCBrbm93bGVkZ2UgYWJvdXQgaG93IHRoZSBHUFUgZHJp
dmVyIGlzIHVzaW5nIHRoZSBiYWNraW5nIHN0b3JlLg0KDQpHb3QgaXQNCg0KPiBCVFcgd2hlbiB5
b3UgdXNlIERNQSBhZGRyZXNzZXMgZnJvbSBETUEtYnVmIGFsd2F5cyBrZWVwIGluIG1pbmQgdGhh
dCB0aGlzIG1lbW9yeSBjYW4gYmUgd3JpdHRlbiBieSBvdGhlcnMgYXQgdGhlIHNhbWUgdGltZSwg
ZS5nLiB5b3UgY2FuJ3QgZG8gdGhpbmdzIGxpa2UgY29tcHV0ZSBhIENSQyBmaXJzdCwgdGhlbiB3
cml0ZSB0byBiYWNraW5nIHN0b3JlIGFuZCBmaW5hbGx5IGNvbXBhcmUgQ1JDLg0KDQpSaWdodC4g
VGhlIGRpcmVjdCBJTyBwYXRoIGFsc28gd29ya3Mgd2l0aCB1c2VyIHBhZ2VzLCBzbyB0aGUNCmNv
bnN0cmFpbnRzIGFyZSBzaW1pbGFyIGluIHRoaXMgcmVnYXJkLg0KDQotLSANClBhdmVsIEJlZ3Vu
a292DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
