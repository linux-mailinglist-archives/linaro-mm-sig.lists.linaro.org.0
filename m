Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDj9JTwL4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:15:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6141A411809
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:15:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7615840963
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:15:55 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by lists.linaro.org (Postfix) with ESMTPS id 2D32E3F83D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jan 2026 19:51:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=R6GJz3fO;
	spf=pass (lists.linaro.org: domain of asml.silence@gmail.com designates 209.85.221.51 as permitted sender) smtp.mailfrom=asml.silence@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42fbc544b09so877510f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Jan 2026 11:51:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767729076; x=1768333876; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ovZgk8PxCrhilP9ak1FB2YkidalwKuZZczfXtCx59dw=;
        b=R6GJz3fOzXzITQrJM5y4X2HtV9eZNNsl/iHRv1Y/U3mT9QAIZZmakluVAgKNQnts1z
         +cGTNFNY1WhYCMG6BwUcKYaMynC9uBHPR0vq+tqJagR/pqQZ7zhxouU94qnqCUk5/0Tu
         wijPdL5aVMR33B09wtPBpx3PeNalzaRbLx4CtAAzrEes8ROJBhtijHZ5HxdPycuJgk04
         CH5i8WBWTsFTRTTWWTRzrWOISWPc1hqxY2tMfgALcBTgYTYMlT9XN8ygXWHEzVGvMGKC
         mp8ygyvbz6DuxRL6tntyRyI6FyXJ8jNz7t7bJxP945wn41QjjoCZoJSbXjL2bok5UcHl
         4PgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767729076; x=1768333876;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ovZgk8PxCrhilP9ak1FB2YkidalwKuZZczfXtCx59dw=;
        b=qMjd+bgY/qqlWUhULWQ+fnZhRJ/v2rVT+tXT2AS8bydUzUbokRr7qRLOZ6RYL5/lkE
         VW0ELvERkPovW4W2/+qeWdjI7RHFHEoBhYJhal4SIVTIgtokukRr3jZo4D5zy9yzCryM
         TXf7MUuZBEoyOLH9Nola8rDVE27SLMgHw7nm0+QYfDnSwXwh6Cb8m82g55BamkzJsmOs
         45OsIHmYQ3Alr78LTwyZKSdB0Xgjt/8YAtvC34JvtCleWoLtnlIirm71e8Gy+R+FQms1
         xsvkw6R8/AXvk9pWIApcX/0VGRsgot/jC4NSPJR+nfauR7LyI+8kDhVwoV8wNqnMu5GY
         Xe6g==
X-Forwarded-Encrypted: i=1; AJvYcCXHxtnGDyqqsXLwXJgUH111VOZbdwWXwsQXCcE9/v+kiTGwIgEdq7V0B6Cua8wiNRJkvYs8E0UQ5zySPOsK@lists.linaro.org
X-Gm-Message-State: AOJu0YzSIrIiTUR0EhPg+ErsewzZflBYKzUIxnfyXz2DmXMp0AYZIZf6
	weogtDGYorO9iUJLdQ4JJNoIyLLeJTbrMpGpGqG6kAoU5S3GQ40IDOUt
X-Gm-Gg: AY/fxX7iOVhhmpMmhm36suM6eM6nZhIlWLO7sPPjJ5JZkT+6bUN/apVUdGC3Qbq30K/
	zhA/ZAJmj/PpOjXQbChfBhe6MZfPcH7XFFV5Yrz9uyq0S5ibkF2tOtIhtiEQ71y1Glbt923L1vT
	PbOQW6QGBSW/QT4q09n9TXJPKCdcd5QxOgrBSPvyAucJzD5HBXr8wOZEm1h6OAQrzy6AcBM5Olv
	UV5Yo/2QW2excsubaNrsyc0FzaZYuf6/o6kLHnxYtB2GnLQE6NPu2ayXmAjnGS35TFSBepVOzhA
	Te/XmdKmCLGb7YTbHBC+LTYod8PzONm3X+Ln4/orjcYDW+8MdueH/NQI96BY1RTo1rJtijm+a1s
	1Isodb87znKIzkQJVr66A1qCHbIHvJmW8wjnnYeaWlXEKqbtq96mOhqGCwAa5e07jwyFoLC58n3
	shE14bbxUnx4u/U0Ix7tUKWvKNShcnGSIHrbnuCnjVGQOb4nTBq+a4FrsN0D+lz9/MMnTzEl6uy
	c8rurTYWjFv3/g4U/oM7G/MyXUR6Z8zV0rq0i3BylsuVgIC5C6p8/DpdRsvfmKD
X-Google-Smtp-Source: AGHT+IFFym+HTWb6WhRU4bKfzHds67XbzvjVQ0ncM7+fS6yOVWLogcdaslK7a3BF15xU4e7GXQY5lg==
X-Received: by 2002:a5d:5f51:0:b0:430:fdb8:8510 with SMTP id ffacd0b85a97d-432c3790ca4mr333772f8f.24.1767729076041;
        Tue, 06 Jan 2026 11:51:16 -0800 (PST)
Received: from ?IPV6:2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c? ([2a01:4b00:bd21:4f00:7cc6:d3ca:494:116c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd0e19bfsm6241105f8f.18.2026.01.06.11.51.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 11:51:15 -0800 (PST)
Message-ID: <a96e327d-3fef-4d08-87e9-c65866223967@gmail.com>
Date: Tue, 6 Jan 2026 19:51:12 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ming Lei <ming.lei@redhat.com>, Christoph Hellwig <hch@lst.de>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <74d689540fa200fe37f1a930165357a92fe9e68c.1763725387.git.asml.silence@gmail.com>
 <7b2017f4-02a3-482a-a173-bb16b895c0cb@amd.com>
 <20251204110709.GA22971@lst.de>
 <0571ca61-7b17-4167-83eb-4269bd0459fe@amd.com>
 <20251204131025.GA26860@lst.de> <aVnFnzRYWC_Y5zHg@fedora>
Content-Language: en-US
From: Pavel Begunkov <asml.silence@gmail.com>
In-Reply-To: <aVnFnzRYWC_Y5zHg@fedora>
X-Spamd-Bar: ---
X-MailFrom: asml.silence@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BKUGJX5VYVCBTFS53DGGS372QAKQUQC4
X-Message-ID-Hash: BKUGJX5VYVCBTFS53DGGS372QAKQUQC4
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:11:47 +0000
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 01/11] file: add callback for pre-mapping dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BKUGJX5VYVCBTFS53DGGS372QAKQUQC4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[2396];
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
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FROM_NEQ_ENVFROM(0.00)[asmlsilence@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.799];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 6141A411809
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS80LzI2IDAxOjQyLCBNaW5nIExlaSB3cm90ZToNCj4gT24gVGh1LCBEZWMgMDQsIDIwMjUg
YXQgMDI6MTA6MjVQTSArMDEwMCwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6DQo+PiBPbiBUaHUs
IERlYyAwNCwgMjAyNSBhdCAxMjowOTo0NlBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPj4+PiBJIGZpbmQgdGhlIG5hbWluZyBwcmV0dHkgY29uZnVzaW5nIGEgd2VsbC4gIEJ1dCB3
aGF0IHRoaXMgZG9lcyBpcyB0bw0KPj4+PiB0ZWxsIHRoZSBmaWxlIHN5c3RlbS9kcml2ZXIgdGhh
dCBpdCBzaG91bGQgZXhwZWN0IGEgZnV0dXJlDQo+Pj4+IHJlYWRfaXRlci93cml0ZV9pdGVyIG9w
ZXJhdGlvbiB0aGF0IHRha2VzIGRhdGEgZnJvbSAvIHB1dHMgZGF0YSBpbnRvDQo+Pj4+IHRoZSBk
bWFidWYgcGFzc2VkIHRvIHRoaXMgb3BlcmF0aW9uLg0KPj4+DQo+Pj4gVGhhdCBleHBsYW5hdGlv
biBtYWtlcyBtdWNoIG1vcmUgc2Vuc2UuDQo+Pj4NCj4+PiBUaGUgcmVtYWluaW5nIHF1ZXN0aW9u
IGlzIHdoeSBkb2VzIHRoZSB1bmRlcmx5aW5nIGZpbGUgc3lzdGVtIC8gZHJpdmVyDQo+Pj4gbmVl
ZHMgdG8ga25vdyB0aGF0IGl0IHdpbGwgZ2V0IGFkZHJlc3NlcyBmcm9tIGEgRE1BLWJ1Zj8NCj4+
DQo+PiBUaGlzIGV2ZW50dWFsbHkgZW5kcyB1cCBjYWxsaW5nIGRtYV9idWZfZHluYW1pY19hdHRh
Y2ggYW5kIHByb3ZpZGVzDQo+PiBhIHdheSB0byBmaW5kIHRoZSBkbWFfYnVmX2F0dGFjaG1lbnQg
bGF0ZXIgaW4gdGhlIEkvTyBwYXRoLg0KPiANCj4gTWF5YmUgaXQgY2FuIGJlIG5hbWVkIGFzIC0+
ZG1hX2J1Zl9hdHRhY2goKT8gIEZvciB3aXJpbmcgZG1hLWJ1ZiBhbmQgdGhlDQo+IGltcG9ydGVy
IHNpZGUobnZtZSkuDQo+IA0KPiBCdXQgSSBhbSB3b25kZXJpbmcgd2h5IG5vdCBtYWtlIGl0IGFz
IG9uZSBzdWJzeXN0ZW0gaW50ZXJmYWNlLCBzdWNoIGFzIG52bWUNCj4gaW9jdGwsIHRoZW4gdGhl
IHdob2xlIGltcGxlbWVudGF0aW9uIGNhbiBiZSBzaW1wbGlmaWVkIGEgbG90LiBJdCBpcyByZWFz
b25hYmxlDQo+IGJlY2F1c2Ugc3Vic3lzdGVtIGlzIGV4YWN0bHkgdGhlIHNpZGUgZm9yIGNvbnN1
bWluZy9pbXBvcnRpbmcgdGhlIGRtYS1idWYuDQoNCkl0J3Mgbm90IGFuIG52bWUgc3BlY2lmaWMg
aW50ZXJmYWNlLCBhbmQgc28gYSBmaWxlIG9wIHdhcyBtdWNoIG1vcmUNCmNvbnZlbmllbnQuIEFu
ZCBpb2N0bHMgZm9yIHJlZ2lzdGVyaW5nIGl0IGludG8gaW9fdXJpbmcgd291bGQgYWxzbyBiZQ0K
cHJvYmxlbWF0aWMuIEkgc2ltcGxpZmllZCBzb21lIG9mIHRoZSBsYXllcmluZyBmb3IgdGhlIG5l
eHQgdmVyc2lvbiwNCmJ1dCBtb3N0IG9mIHRoZSBjb21wbGV4aXR5IGNvbWVzIGZyb20gaGFuZGxp
bmcgaW4gYmxrLW1xLWRtYS10b2tlbi5oLA0KaXQnZCBiZSBzYW1lIGV2ZW4gaWYgbWFkZSBudm1l
IHNwZWNpZmljLiBJbiBmYWN0LCBJIGhhZCBpdCBhbGwgZmlyc3QNCmluIG52bWUgYnV0IHRoZW4g
aGFkIHRvIG1vdmUgdG8gYmxvY2svIGJlY2F1c2Ugb2Ygc2xlZXBpbmcuDQoNCi0tIA0KUGF2ZWwg
QmVndW5rb3YNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
