Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF418D86DC
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2024 18:02:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E97940440
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  3 Jun 2024 16:02:18 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by lists.linaro.org (Postfix) with ESMTPS id D23F340440
	for <linaro-mm-sig@lists.linaro.org>; Mon,  3 Jun 2024 16:02:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=MhLNQouc;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.208.41 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-57a1b122718so14574a12.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 03 Jun 2024 09:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1717430525; x=1718035325; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3pPvxS6gC0j0wLGI+tY2V3qvQ3+8OtijuhMmjKJ6yQo=;
        b=MhLNQoucHseijY3OigKPtY6Cln1WMXvRV4D5rX16qyJDOgaBLBY1pJ43a42LpwYMaS
         DRmPqziMFLfOCAF++vm8z1OCoEUEouXNRc+UN0Qqmkd+1p9X6+8ok19+BAK+QEW1TDvf
         BqlHuRHUIeU1ArDra1Irz8M/RQGaRW6q+J7JYUYGwZy8o5N7/BRPez9LjnG8f/IJTOf/
         IK32r1VXqJGpSrFXyE19dzB/OPJ/21oWwXjY534870jiRP4tcoZ17T2wKJUX11VEmXI4
         4LefFN3bT455RZ8C7eYBWjnwqRNR0xe67E0QTxNoBvXWdGioBueo/9VoY9B5a30iEZTO
         cfNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717430525; x=1718035325;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3pPvxS6gC0j0wLGI+tY2V3qvQ3+8OtijuhMmjKJ6yQo=;
        b=Si0jY7GWQSIfuWR5qJYaq5dT2FK4KmYAfsL88UOlRzLSrggBYE4tMzCpnwG1tMBzl4
         DqOKu3c0iFMPhQxdGMmGvI869lwumaVwFkWANR5rpXoIV69XxaC5hI8kcSASK9xl82lB
         X5WP1WQCjg1G6UfjQPhZVFmyV6gnEa2MPJOwxOPh0yKoSokKH39OjLy/ETM4wLtrs4pR
         gaOBIkCKxbozFdhhSJNwheFpQBH0LT0P1KrAdNr+gaYwSMq4S+Xq6zSsTg+fpfcxhKXd
         /67F5crv5uwBguzy5HuqIJ/EXus6C8k+lgOOGFs0S+HR0rudElFlL3/aeHXgyf35Vb5I
         l00Q==
X-Forwarded-Encrypted: i=1; AJvYcCWn2/suzto7NRc60lHB8eLf2VPX/oYIpDPxq4Wc1MxUii/cEfUWLOtSKbBiyqzP4REKfiVLDUQd3R2eHn3GegLpYt4P+3ASJdKPZdq2MVM=
X-Gm-Message-State: AOJu0YxubYmYtToG1XZjAbt9kv0bfMFsx/Ykf/83Xmrfzsi61qdoUB1X
	oojMlzrEddWNI2YVlIjlk8dktQ2MizthLzUyaa1bVCnMOlgjY2FhvLgoWB/+zsXw39GmKeCpbsq
	iyrimHjizyFiNnWjI+crtHnxCuNpzb7DVNYY=
X-Google-Smtp-Source: AGHT+IE2ygUL2gxko1zx9nZ3F9o7d4GPZHrXPzUVa/BVxhglHJFXHF4Y/LFsOuSgzTNV+PzRLjHurcbX0Q3lsDSwxtg=
X-Received: by 2002:a05:6402:1803:b0:572:e6fb:ab07 with SMTP id
 4fb4d7f45d1cf-57a49645b32mr266898a12.7.1717430524539; Mon, 03 Jun 2024
 09:02:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240603114008.16235-1-hailong.liu@oppo.com>
In-Reply-To: <20240603114008.16235-1-hailong.liu@oppo.com>
From: John Stultz <jstultz@google.com>
Date: Mon, 3 Jun 2024 09:01:52 -0700
Message-ID: <CANDhNCq50zPB+TS+_Oo0HY0aUuBAdik2KrC8eJRTygbis293sw@mail.gmail.com>
To: hailong.liu@oppo.com
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D23F340440
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.41:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,arm.com,google.com,amd.com,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: 5KJVVKA6IJ4UGVKAFIIPTH7DQXRGWVJH
X-Message-ID-Hash: 5KJVVKA6IJ4UGVKAFIIPTH7DQXRGWVJH
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 21cnbao@gmail.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v1] dma-buf: heaps: move the verification of heap_flags to the corresponding heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5KJVVKA6IJ4UGVKAFIIPTH7DQXRGWVJH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBKdW4gMywgMjAyNCBhdCA0OjQw4oCvQU0gPGhhaWxvbmcubGl1QG9wcG8uY29tPiB3
cm90ZToNCj4NCj4gRnJvbTogIkhhaWxvbmcuTGl1IiA8aGFpbG9uZy5saXVAb3Bwby5jb20+DQo+
DQo+IFRoaXMgaGVscCBtb2R1bGUgdXNlIGhlYXBfZmxhZ3MgdG8gZGV0ZXJtaW5lIHRoZSB0eXBl
IG9mIGRtYS1idWYsDQo+IHNvIHRoYXQgc29tZSBtZWNoYW5pc21zIGNhbiBiZSB1c2VkIHRvIHNw
ZWVkIHVwIGFsbG9jYXRpb24sIHN1Y2ggYXMNCj4gbWVtb3J5X3Bvb2wsIHRvIG9wdGltaXplIHRo
ZSBhbGxvY2F0aW9uIHRpbWUgb2YgZG1hLWJ1Zi4NCg0KVGhpcyBmZWVscyBsaWtlIGl0J3MgdHJ5
aW5nIHRvIGludHJvZHVjZSBoZWFwIHNwZWNpZmljIGZsYWdzLCBidXQNCmRvZXNuJ3QgaW50cm9k
dWNlIGFueSBkZXRhaWxzIGFib3V0IHdoYXQgdGhvc2UgZmxhZ3MgbWlnaHQgYmU/DQoNClRoaXMg
c2VlbXMgbGlrZSBpdCB3b3VsZCByZS1hbGxvdyB0aGUgb2xkIG9wYXF1ZSB2ZW5kb3Igc3BlY2lm
aWMgaGVhcA0KZmxhZ3MgdGhhdCB3ZSBzYXcgaW4gdGhlIElPTiBkYXlzLCB3aGljaCB3YXMgcHJv
YmxlbWF0aWMgYXMgZGlmZmVyZW50DQp1c2Vyc3BhY2VzIHdvdWxkIHVzZSB0aGUgc2FtZSBpbnRl
cmZhY2Ugd2l0aCBwb3RlbnRpYWxseSBjb2xsaWRpbmcNCmhlYXAgZmxhZ3Mgd2l0aCBkaWZmZXJl
bnQgbWVhbmluZ3MuIFJlc3VsdGluZyBpbiBubyB3YXkgdG8gcHJvcGVybHkNCm1vdmUgdG8gYW4g
dXBzdHJlYW0gc29sdXRpb24uDQoNCldpdGggdGhlIGRtYS1oZWFwcyBpbnRlcmZhY2UsIHdlJ3Jl
IHRyeWluZyB0byBtYWtlIHN1cmUgaXQgaXMgd2VsbA0KZGVmaW5lZC4gT25lIGNhbiByZWdpc3Rl
ciBhIG51bWJlciBvZiBoZWFwcyB3aXRoIGRpZmZlcmVudCBiZWhhdmlvcnMsDQphbmQgdGhlIGhl
YXAgbmFtZSBpcyB1c2VkIHRvIGRpZmZlcmVudGlhdGUgdGhlIGJlaGF2aW9yLiBBbnkgZmxhZ3MN
CmludHJvZHVjZWQgd2lsbCBuZWVkIHRvIGJlIHdlbGwgZGVmaW5lZCBhbmQgYmVoYXZpb3JhbGx5
IGNvbnNpc3RlbnQNCmJldHdlZW4gaGVhcHMuIFRoYXQgd2F5IHdoZW4gYW4gdXBzdHJlYW0gc29s
dXRpb24gbGFuZHMsIGlmIG5lY2Vzc2FyeQ0Kd2UgY2FuIHByb3ZpZGUgYmFja3dhcmRzIGNvbXBh
dGliaWxpdHkgdmlhIHN5bWxpbmtzLg0KDQpTbyBJIGRvbid0IHRoaW5rIHRoaXMgaXMgYSBnb29k
IGRpcmVjdGlvbiB0byBnbyBmb3IgZG1hLWhlYXBzLg0KDQpJdCB3b3VsZCBiZSBiZXR0ZXIgaWYg
eW91IHdlcmUgYWJsZSB0byBjbGFyaWZ5IHdoYXQgZmxhZyByZXF1aXJlbWVudHMNCnlvdSBuZWVk
LCBzbyB3ZSBjYW4gYmV0dGVyIHVuZGVyc3RhbmQgaG93IHRoZXkgbWlnaHQgYXBwbHkgdG8gb3Ro
ZXINCmhlYXBzLCBhbmQgc2VlIGlmIGl0IHdhcyBzb21ldGhpbmcgd2Ugd291bGQgd2FudCB0byBk
ZWZpbmUgYXMgYSBmbGFnDQooc2VlIHRoZSBkaXNjdXNzaW9uIGhlcmUgZm9yIHNpbWlsYXIgdGhv
dWdodHM6DQpodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sL0NBTkRoTkNvT0t3dHBzdEZFMlZE
Y1V2emRYVVdrWi1aeCtmejZ4cmRQV1R5Y2lWWE1YUUBtYWlsLmdtYWlsLmNvbS8NCikNCg0KQnV0
IGlmIHlvdXIgdmVuZG9yIGhlYXAgcmVhbGx5IG5lZWRzIHNvbWUgc29ydCBvZiBmbGFncyBhcmd1
bWVudCB0aGF0DQp5b3UgY2FuJ3QgZ2VuZXJhbGl6ZSwgeW91IGNhbiBhbHdheXMgaW1wbGVtZW50
IHlvdXIgb3duIGRtYWJ1Zg0KZXhwb3J0ZXIgZHJpdmVyIHdpdGggd2hhdGV2ZXIgaW9jdGwgaW50
ZXJmYWNlIHlvdSdkIHByZWZlci4NCg0KdGhhbmtzDQotam9obg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
