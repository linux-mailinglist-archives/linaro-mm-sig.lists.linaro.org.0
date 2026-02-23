Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIfxL7bem2mu8gMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 05:59:34 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0FF171D60
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 05:59:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D31353F756
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 04:59:32 +0000 (UTC)
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	by lists.linaro.org (Postfix) with ESMTPS id DEE313F756
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 04:59:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=FtRdIh5v;
	spf=pass (lists.linaro.org: domain of groeck7@gmail.com designates 74.125.82.174 as permitted sender) smtp.mailfrom=groeck7@gmail.com;
	dmarc=none
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2ba64b5a53aso3554908eec.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 22 Feb 2026 20:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771822770; x=1772427570; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ar5KC76tgxYX5PKL9eOkCAkUY5PVkOEvBMJNrWwerKw=;
        b=FtRdIh5vijXqRItFj038PGivg2aBYJYhdaEsAMkrwqREnk1/W/UXtqM48LbUGrPZnM
         hbXQEhP17UMGrZAw3wTuOtJ9MCltxNJcwTbfeR/iphkFqQzBwYrq1hdecIphLRHNz9Y1
         Kj6on7rymqU0dcMa/4Ona2hyYyNAKQY91jvfEvBFtJu1z4n/OiwPMY30Rba3dzrL8Brw
         9dKiMR8ZCQY6dTt4Bua8HjTY2UGgOE9z2PapKCmWgGGNTic8OjuZjDQqosWBc6kHJkG2
         eprUOT+uOMqnkaEN+IYKB9F+x/9LLiWMumkXft9QGOiLaK8+1sGdl4LeyI17v48O5bXn
         qWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771822770; x=1772427570;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ar5KC76tgxYX5PKL9eOkCAkUY5PVkOEvBMJNrWwerKw=;
        b=Mt+4Rrn2YQy4M4UsKIxjIU0RfwRcP0ylAcuy2X6s8kYgVik2af0aDmObbuQ4SHTpsf
         jDzU+i9mNEOnumwV6qMdGxd4UOxxvCUfTv/W6wl3lhCPKas51gnC6X4l9KGtzBPBlu1p
         8aGtMOclqAQhjHLyOQeubkW7E4YKLICAOUQd8Q6sGZnkfWR4ZKC2Z82l/VhifREc0qnr
         x/nQza2m8ZJCup4z6nw4abwRJSGrFeS07oGC2IcJG9f/SONM6B/GIABQFGF3ixLX7D97
         7MF3MqNjtzO+alt/y2avto5EWIesaNpl4/DZbhODsgEexbcO1maDrF7BtMIXxrtYuIq1
         d1sA==
X-Forwarded-Encrypted: i=1; AJvYcCWgjT0Rku2lzEJidXq4+wE5kHuH2YSIBd7PefyNjC8TV/7MtEc4RmeQqfO2q00OL8K0q4UHKtuQwoDWNHzQ@lists.linaro.org
X-Gm-Message-State: AOJu0YxIKU793OA1DSw7IdbIDL1WrR4uIlOMPNLx8eqCZ3RYPOmBfbb6
	ir5y8D1Z3V6wDFZ/Pt98vHZ0lStpwHWHacjSfAvWhG4mgNmTmR3UqXxP
X-Gm-Gg: ATEYQzyqXfB1uO2Q305BRX5saXbFHrZOQR7vpO8AYiJC/A+6C7DAYnCl3C7yLf4gSnn
	oa4zwIjkvyU5Xa018k4lv8oR+GuOyI/GqkNi9uWRqfUCUGzQ846BOfIgezX2Q8EiqY8Q3/nW6aw
	FUxVDiTXeFU/GID0JRNtbIwPoRtnlRqMijilwgaXTUfXTDsTVIRFxRdSO3g61EdGorqEkLLQ0GC
	K0dfrLVrsX50eCgJeFAI8MMXHFcUqcrOhsAzNy0HaeSdBBjV1k68R8Ol72xSWcsLsT43lZ/K6M7
	fPZB811SFLg9m+JmhiXQ8gHmQcN6eKeaog+w1O5ji0mQmoLWfO7NVHF7Gkav/VkCzAsLCg0p2NN
	giA82ZqBXXCECVUTRKinsvO/URVj10+ma/5A3SY/GU79OOUsodymsASe3aSF1fBLYZCc6LJfXKf
	uEjf+KlCptHjqilv6shYnL0tgYDdt7lWFzidN6
X-Received: by 2002:a05:7301:6783:b0:2ba:6b03:90af with SMTP id 5a478bee46e88-2bd7bb4b383mr3387725eec.6.1771822769743;
        Sun, 22 Feb 2026 20:59:29 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bd7da4775dsm4300363eec.2.2026.02.22.20.59.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 20:59:29 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sun, 22 Feb 2026 20:59:28 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Edward Srouji <edwards@nvidia.com>
Message-ID: <716e8a8e-e4e0-468d-9314-10082c2bbb8d@roeck-us.net>
References: <20260201-dmabuf-export-v3-0-da238b614fe3@nvidia.com>
 <20260201-dmabuf-export-v3-2-da238b614fe3@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260201-dmabuf-export-v3-2-da238b614fe3@nvidia.com>
X-Spamd-Bar: ---
Message-ID-Hash: HUQSHRR5I3KNKVTHGTYZIXIXWA5TCF5A
X-Message-ID-Hash: HUQSHRR5I3KNKVTHGTYZIXIXWA5TCF5A
X-MailFrom: groeck7@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Yishai Hadas <yishaih@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH rdma-next v3 2/3] RDMA/uverbs: Add DMABUF object type and operations
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HUQSHRR5I3KNKVTHGTYZIXIXWA5TCF5A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[roeck-us.net];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.978];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:mid]
X-Rspamd-Queue-Id: 2F0FF171D60
X-Rspamd-Action: no action

T24gU3VuLCBGZWIgMDEsIDIwMjYgYXQgMDQ6MzQ6MDVQTSArMDIwMCwgRWR3YXJkIFNyb3VqaSB3
cm90ZToNCj4gRnJvbTogWWlzaGFpIEhhZGFzIDx5aXNoYWloQG52aWRpYS5jb20+DQo+IA0KPiBF
eHBvc2UgRE1BQlVGIGZ1bmN0aW9uYWxpdHkgdG8gdXNlcnNwYWNlIHRocm91Z2ggdGhlIHV2ZXJi
cyBpbnRlcmZhY2UsDQo+IGVuYWJsaW5nIEluZmluaUJhbmQvUkRNQSBkZXZpY2VzIHRvIGV4cG9y
dCBQQ0kgYmFzZWQgbWVtb3J5IHJlZ2lvbnMNCj4gKGUuZy4gZGV2aWNlIG1lbW9yeSkgYXMgRE1B
QlVGIGZpbGUgZGVzY3JpcHRvcnMuIFRoaXMgYWxsb3dzDQo+IHplcm8tY29weSBzaGFyaW5nIG9m
IFJETUEgbWVtb3J5IHdpdGggb3RoZXIgc3Vic3lzdGVtcyB0aGF0IHN1cHBvcnQgdGhlDQo+IGRt
YS1idWYgZnJhbWV3b3JrLg0KPiANCj4gQSBuZXcgVVZFUkJTX09CSkVDVF9ETUFCVUYgb2JqZWN0
IHR5cGUgYW5kIGFsbG9jYXRpb24gbWV0aG9kIHdlcmUNCj4gaW50cm9kdWNlZC4NCj4gDQo+IER1
cmluZyBhbGxvY2F0aW9uLCB1dmVyYnMgaW52b2tlcyB0aGUgZHJpdmVyIHRvIHN1cHBseSB0aGUN
Cj4gcmRtYV91c2VyX21tYXBfZW50cnkgYXNzb2NpYXRlZCB3aXRoIHRoZSBnaXZlbiBwYWdlIG9m
ZnNldCAocGdvZmYpLg0KPiANCj4gQmFzZWQgb24gdGhlIHJldHVybmVkIHJkbWFfdXNlcl9tbWFw
X2VudHJ5LCB1dmVyYnMgcmVxdWVzdHMgdGhlIGRyaXZlcg0KPiB0byBwcm92aWRlIHRoZSBjb3Jy
ZXNwb25kaW5nIHBoeXNpY2FsLW1lbW9yeSBkZXRhaWxzIGFzIHdlbGwgYXMgdGhlDQo+IGRyaXZl
cuKAmXMgUENJIHByb3ZpZGVyIGluZm9ybWF0aW9uLg0KPiANCj4gVXNpbmcgdGhpcyBpbmZvcm1h
dGlvbiwgZG1hX2J1Zl9leHBvcnQoKSBpcyBjYWxsZWQ7IGlmIGl0IHN1Y2NlZWRzLA0KPiB1b2Jq
LT5vYmplY3QgaXMgc2V0IHRvIHRoZSB1bmRlcmx5aW5nIGZpbGUgcG9pbnRlciByZXR1cm5lZCBi
eSB0aGUNCj4gZG1hLWJ1ZiBmcmFtZXdvcmsuDQo+IA0KPiBUaGUgZmlsZSBkZXNjcmlwdG9yIG51
bWJlciBmb2xsb3dzIHRoZSBzdGFuZGFyZCB1dmVyYnMgYWxsb2NhdGlvbiBmbG93LA0KPiBidXQg
dGhlIGZpbGUgcG9pbnRlciBjb21lcyBmcm9tIHRoZSBkbWEtYnVmIHN1YnN5c3RlbSwgaW5jbHVk
aW5nIGl0cyBvd24NCj4gZm9wcyBhbmQgcHJpdmF0ZSBkYXRhLg0KPiANCj4gV2hlbiBhbiBtbWFw
IGVudHJ5IGlzIHJlbW92ZWQsIHV2ZXJicyBpdGVyYXRlcyBvdmVyIGl0cyBhc3NvY2lhdGVkDQo+
IERNQUJVRnMsIG1hcmtzIHRoZW0gYXMgcmV2b2tlZCwgYW5kIGNhbGxzIGRtYV9idWZfbW92ZV9u
b3RpZnkoKSBzbyB0aGF0DQo+IHRoZWlyIGltcG9ydGVycyBhcmUgbm90aWZpZWQuDQo+IA0KPiBU
aGUgc2FtZSBwcm9jZWR1cmUgYXBwbGllcyBkdXJpbmcgdGhlIGRpc2Fzc29jaWF0ZSBmbG93OyBm
aW5hbCBjbGVhbnVwDQo+IG9jY3VycyB3aGVuIHRoZSBhcHBsaWNhdGlvbiBjbG9zZXMgdGhlIGZp
bGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBZaXNoYWkgSGFkYXMgPHlpc2hhaWhAbnZpZGlhLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogRWR3YXJkIFNyb3VqaSA8ZWR3YXJkc0BudmlkaWEuY29tPg0K
DQpXaGVuIHRyeWluZyB0byBidWlsZCBwb3dlcnBjOnBwYzY0ZV9kZWZjb25maWc6DQoNCkVSUk9S
OiBtb2Rwb3N0OiAiZG1hX3Jlc3Zfd2FpdF90aW1lb3V0IiBbZHJpdmVycy9pbmZpbmliYW5kL2Nv
cmUvaWJfY29yZS5rb10gdW5kZWZpbmVkIQ0KRVJST1I6IG1vZHBvc3Q6ICJkbWFfYnVmX21vdmVf
bm90aWZ5IiBbZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvaWJfY29yZS5rb10gdW5kZWZpbmVkIQ0K
RVJST1I6IG1vZHBvc3Q6ICJkbWFfcmVzdl9yZXNldF9tYXhfZmVuY2VzIiBbZHJpdmVycy9pbmZp
bmliYW5kL2NvcmUvaWJfY29yZS5rb10gdW5kZWZpbmVkIQ0KDQpUaGUgY29kZSBub3cgcmVxdWly
ZXMgQ09ORklHX0RNQV9TSEFSRURfQlVGRkVSIHdoaWNoIGlzIG5vdCBlbmFibGVkIGZvcg0KdGhp
cyBwbGF0Zm9ybS4NCg0KR3VlbnRlcg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
