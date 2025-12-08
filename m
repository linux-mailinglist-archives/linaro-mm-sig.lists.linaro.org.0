Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OJTNaUD4WmJoQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:33 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7350A41123C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:43:33 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 311BD40F40
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:43:32 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	by lists.linaro.org (Postfix) with ESMTPS id 8A9E03F6F2
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Dec 2025 09:53:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=X6pZGfcw;
	spf=pass (lists.linaro.org: domain of 21cnbao@gmail.com designates 209.85.222.171 as permitted sender) smtp.mailfrom=21cnbao@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8b2627269d5so350488685a.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Dec 2025 01:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765187584; x=1765792384; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1sM32WeH2jVyY64qANlJiXgkX22XEyx8ykYLFAD02P0=;
        b=X6pZGfcw/8tNjPlrsN7fy1kFPGYJjBe2eul1M06Hkaze9FVWBxja7ADU2gIbnl+Yzr
         JHEpzKJ24lnqw2eUDB492B+4jsKUqiC8S9LoefUACWYhbXcueoVDtIgZpspJee0GpybB
         aETbALRTA141J31Pkkyhx0HXFtm8IGIYO/EppcyBG43r5fh/6eVcO1iwaOjyEMHUjCLv
         FmOjdKDydrAWEpTvKIf9k5D4KTSeW4xsMybiNQ7DBRKgfD5qU5MyelkBb7SBjfyCiuQR
         Rpn/A9g+6dXgiH2XNPzG0UE3Pj/4q5yLCWn0bU9+ibnViCcxA6as34FV/WRddueynoiw
         T8Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765187584; x=1765792384;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1sM32WeH2jVyY64qANlJiXgkX22XEyx8ykYLFAD02P0=;
        b=J4ssSQDViuLodbDEkkNMeXD0g7HGMfj8zYiX+0KfVyQXlqTbNgz1QGBg3vQK+pLUOs
         Qha/xXbNXTS0f7Aa43XZlxIvg58B/y1Msn8mMHNTWdlVpLw0hJoQhcHGpWwDXE5f/S96
         DrQoEHWbgKJKNGREC9R3p1KMCZIanCVWEkZhMVDNSttXlCPoYaG0K+9RJKfBaFrQC5Z0
         PboA4tpZ1m8NVXSsTZ1n6wL/SdP7Fp/ZZ5uFT081zzUehckvrCu+CLBe420MBckdh9AQ
         FqOA223swOA3cycmEiKzAvWlM8p3s7xsktqemSuNucb9iMgDJ/4JaiIoEF3AoeNKhY7R
         Dlpw==
X-Forwarded-Encrypted: i=1; AJvYcCWnCV+k68Y6KFCuRmnIJX6KIjLQzBjFSV7ltrjWv/Fy+25i9c2N4WTfMq1mSbpfX3zsLDlJ7FRYDoektRol@lists.linaro.org
X-Gm-Message-State: AOJu0YwUqjNm1CPgiJrwSPDoueQQxqtsiMqw4wvhCNZDzy5nEpUYDzYS
	Neub+jGeBCAM60uAj/HKnXVg4BnXHTjDB7pev5gsqrr2smFP8SPcV9uvRJQ3gDYhnnRoA0Enz+d
	r6go3dWADIxk2YnUpaX3SR6TklNtnv4g=
X-Gm-Gg: ASbGncurTqOzT8d3MoEipywaD0RbQN5o4TzMtJdxnnT2ddRbmKQlL4f/LZjKZ9vAdgB
	A086u8HA1jNGtb7EWLb3tWzQD40N+rGVuwqb6VFSfaO7RCjDahWqqmowgmdwnqkgFAItnv4ygLZ
	XDtobQsqzPe9I+cUktg2X0Awmw5B5PHLW3E6rFOk2Ns2pNVCUvbIiNqnrIpOVn6DDitP/RBLV1I
	w+lkIt1+GkzTIvepaGa2ky1vcsKMMshNqP/51nIKF2Iit/Iczwn9s3PhCQyLzOBtuxu69A2JA==
X-Google-Smtp-Source: AGHT+IEj0uEs1F+oCvQ5shQtijjpsWvsSqk9ZVjqw/l++cRkIyOaTUZ12XYt+1ixgyp6ULVPgxQ401UwCx6PPQGEOzY=
X-Received: by 2002:a05:622a:c6:b0:4ef:bd1a:501f with SMTP id
 d75a77b69052e-4f03fe048dbmr114802141cf.23.1765187583850; Mon, 08 Dec 2025
 01:53:03 -0800 (PST)
MIME-Version: 1.0
References: <3da6a916cd6d489690b05d2bd64a2b3a@honor.com>
In-Reply-To: <3da6a916cd6d489690b05d2bd64a2b3a@honor.com>
From: Barry Song <21cnbao@gmail.com>
Date: Mon, 8 Dec 2025 17:52:52 +0800
X-Gm-Features: AQt7F2owj7J_9alWp6aSKrVUcQg6W4ytaT9Dh3VtedFYj__73ne_kDrRjgoOen8
Message-ID: <CAGsJ_4w-XtJ8zzc8H4OwW4XV21T8FWGxeoMnfAxmAgBhzrvxWQ@mail.gmail.com>
To: gao xu <gaoxu2@honor.com>
X-Spamd-Bar: ---
X-MailFrom: 21cnbao@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2O4TNSSGPGM6EZ3AEC7TPWFCLGITYJMY
X-Message-ID-Hash: 2O4TNSSGPGM6EZ3AEC7TPWFCLGITYJMY
X-Mailman-Approved-At: Thu, 16 Apr 2026 15:12:39 +0000
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "surenb@google.com" <surenb@google.com>, zhouxiaolong <zhouxiaolong9@honor.com>, Ryan Roberts <ryan.roberts@arm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] dma-buf: system_heap: add PTE_CONT for larger contiguous
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2O4TNSSGPGM6EZ3AEC7TPWFCLGITYJMY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[3101];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[21cnbao@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.361];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 7350A41123C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBEZWMgOCwgMjAyNSBhdCA1OjQx4oCvUE0gZ2FvIHh1IDxnYW94dTJAaG9ub3IuY29t
PiB3cm90ZToNCj4NCj4gY29tbWl0IDA0YzdhZGI1ODcxYSAoImRtYS1idWY6IHN5c3RlbV9oZWFw
OiB1c2UgbGFyZ2VyIGNvbnRpZ3VvdXMgbWFwcGluZ3MNCj4gaW5zdGVhZCBvZiBwZXItcGFnZSBt
bWFwIikgZmFjaWxpdGF0ZXMgdGhlIHVzZSBvZiBQVEVfQ09OVC4gVGhlIHN5c3RlbV9oZWFwDQo+
IGFsbG9jYXRlcyBwYWdlcyBvZiBvcmRlciA0IGFuZCA4IHRoYXQgbWVldCB0aGUgYWxpZ25tZW50
IHJlcXVpcmVtZW50cyBmb3INCj4gUFRFX0NPTlQuIGVuYWJsaW5nIFBURV9DT05UIGZvciBsYXJn
ZXIgY29udGlndW91cyBtYXBwaW5ncy4NCg0KVW5mb3J0dW5hdGVseSwgd2UgZG9uJ3QgaGF2ZSBw
dGVfY29udCBmb3IgYXJjaGl0ZWN0dXJlcyBvdGhlciB0aGFuDQpBQXJjaDY0LiBPbiB0aGUgb3Ro
ZXIgaGFuZCwgQUFyY2g2NCBpc24ndCBhdXRvbWF0aWNhbGx5IG1hcHBpbmcNCmNvbnRfcHRlIGZv
ciBtbWFwLiBJdCBtaWdodCBiZSBiZXR0ZXIgaWYgdGhpcyB3ZXJlIGRvbmUNCmF1dG9tYXRpY2Fs
bHkgYnkgdGhlIEFSTSBjb2RlLg0KDQpSeWFuKENjZWQpIGlzIHRoZSBleHBlcnQgb24gYXV0b21h
dGljYWxseSBzZXR0aW5nIGNvbnRfcHRlIGZvcg0KY29udGlndW91cyBtYXBwaW5nLCBzbyBsZXQn
cyBhc2sgZm9yIHNvbWUgYWR2aWNlIGZyb20gUnlhbi4NCg0KPg0KPiBBZnRlciBhcHBseWluZyB0
aGlzIHBhdGNoLCBUTEIgbWlzc2VzIGFyZSByZWR1Y2VkIGJ5IGFwcHJveGltYXRlbHkgNSUgd2hl
bg0KPiBvcGVuaW5nIHRoZSBjYW1lcmEgb24gQW5kcm9pZCBzeXN0ZW1zLg0KPg0KPiBTaWduZWQt
b2ZmLWJ5OiBnYW8geHUgPGdhb3h1MkBob25vci5jb20+DQo+IC0tLQ0KDQpUaGFua3MNCkJhcnJ5
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
