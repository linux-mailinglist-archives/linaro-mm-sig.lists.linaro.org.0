Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BxiBa0/DGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:47:09 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C383557CC00
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:47:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B078540705
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:47:07 +0000 (UTC)
Received: from mout.web.de (mout.web.de [217.72.192.78])
	by lists.linaro.org (Postfix) with ESMTPS id 93E1640952
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 14:03:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=web.de header.s=s29768273 header.b=bOJ+v2hE;
	spf=pass (lists.linaro.org: domain of Markus.Elfring@web.de designates 217.72.192.78 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de;
	dmarc=pass (policy=quarantine) header.from=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1779112954; x=1779717754; i=markus.elfring@web.de;
	bh=+ZTH6mJXnH52jDZt/w+tO3h5iamk1G9Jp1Od1dNqBhU=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=bOJ+v2hE+VMLQaG3e45aQFsLns+Pdh0j9ks2sAbxjISEKyMG/H8lTwjC5VKkZ31r
	 1rKRJSQSCbzRMgIQvb6tuAe45XW2pePaFwcV/dy7fgkjupBUKGQnrz85djRDN6Mp8
	 lU6Fnv1UOFSr3ko29o7ljNlr4H9ARqK/tnxe4zlDsVcR69Q792Hp8v37OxcwYCUe6
	 6JWEAs1QwUl8A8Py88rRESIYIXYLh3VBypvt/oSufygQgh2nRgHGoXcqMU9bW5OCp
	 8ydzLOc98XCSS8QdBgT/vjEtoZ2dM24cdb97SEkVUN11Cz8cJiavGL2s3w6mvjwu1
	 s0/U1rbw6sN5BsL78g==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from client.hidden.invalid by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1N4N9I-1xPMb60o4c-011Dur; Mon, 18
 May 2026 16:02:34 +0200
Message-ID: <49f16fa4-c3cf-4389-bac4-528f8b1a6b56@web.de>
Date: Mon, 18 May 2026 16:02:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Pavel Begunkov <asml.silence@gmail.com>, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org,
 io-uring@vger.kernel.org, linux-nvme@lists.infradead.org,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian Brauner <brauner@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
 Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <c61e6d928f86f4cb253ae350272e6039faefd3a6.1777475843.git.asml.silence@gmail.com>
Content-Language: en-GB, de-DE
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <c61e6d928f86f4cb253ae350272e6039faefd3a6.1777475843.git.asml.silence@gmail.com>
X-Provags-ID: V03:K1:bnvf8jTFiXSxK3Zuwh3+csR2VT2XJZVm+o8kJ+t5uPxjlQreixC
 82QRnnF0X8DJ8kjN+5Hrr96x6Zkn6xLpgQKbj0ZSn8WPcsKOzAGKN6NgjKUmlcGNx9N/2+H
 NfOG1Agnhgj6kpvb7SrP52Qwb0008feAmQMBfQS23AZ9APsM9azlSHK0qlu38hXW4op9UZf
 1/ffmdZ/+OhkwJ05J9SNQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:zoCe6ZAnw60=;bZfoes+XCDi5xbU4vhcYfVcBTdW
 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
X-Spamd-Bar: ----
X-MailFrom: Markus.Elfring@web.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: EKBWKK52U3ODWIJOTO2ENTEDGOJBJTG4
X-Message-ID-Hash: EKBWKK52U3ODWIJOTO2ENTEDGOJBJTG4
X-Mailman-Approved-At: Tue, 19 May 2026 10:46:26 +0000
CC: LKML <linux-kernel@vger.kernel.org>, Anuj Gupta <anuj20.g@samsung.com>, Jason Gunthorpe <jgg@nvidia.com>, Kanchan Joshi <joshi.k@samsung.com>, Kees Cook <kees@kernel.org>, Nitesh Shetty <nj.shetty@samsung.com>, Phil Cayton <phil.cayton@intel.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 05/10] lib: add dmabuf token infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EKBWKK52U3ODWIJOTO2ENTEDGOJBJTG4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.59 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[web.de : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[web.de:s=s29768273];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[web.de];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org,lists.infradead.org,lists.linaro.org,lists.freedesktop.org,zeniv.linux.org.uk,linux-foundation.org,kernel.org,amd.com,lst.de,kernel.dk,grimberg.me,linaro.org];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[web.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Markus.Elfring@web.de,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email]
X-Rspamd-Queue-Id: C383557CC00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

4oCmDQo+ICsrKyBiL2xpYi9pb19kbWFidWZfdG9rZW4uYw0KPiBAQCAtMCwwICsxLDI3MiBAQA0K
4oCmDQo+ICtzdGF0aWMgdm9pZCBpb19kbWFidWZfbWFwX3JlbGVhc2Vfd29yayhzdHJ1Y3Qgd29y
a19zdHJ1Y3QgKndvcmspDQo+ICt7DQrigKYNCj4gKwlkbWFfcmVzdl9sb2NrKGRtYWJ1Zi0+cmVz
diwgTlVMTCk7DQo+ICsJdG9rZW4tPmRldl9vcHMtPnVubWFwKHRva2VuLCBtYXApOw0KPiArCWRt
YV9yZXN2X3VubG9jayhkbWFidWYtPnJlc3YpOw0K4oCmDQoNCkhvdyBkbyB5b3UgdGhpbmsgYWJv
dXQgdG8gYXBwbHkgYW5vdGhlciBsb2NrIGd1YXJkPw0KDQpSZWdhcmRzLA0KTWFya3VzDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
