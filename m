Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDj8Apg/DGqqawUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:46:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B731E57CBDA
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:46:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CC77401E2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 10:46:46 +0000 (UTC)
Received: from mout.web.de (mout.web.de [212.227.17.11])
	by lists.linaro.org (Postfix) with ESMTPS id BA16A3F690
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 May 2026 11:25:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=web.de header.s=s29768273 header.b=UtWNeIwt;
	spf=pass (lists.linaro.org: domain of Markus.Elfring@web.de designates 212.227.17.11 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de;
	dmarc=pass (policy=quarantine) header.from=web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1779103468; x=1779708268; i=markus.elfring@web.de;
	bh=nMcXuM8rbRcq1h434qj3epfj8FYsmvo3X+4NIcO/AeY=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=UtWNeIwteHAyG+PDJFr1TVyr3K8w2z9a56O5Km7kzGUMYP498Jr77ox067lwbyNT
	 BJHIKkuFuj6i93TsLLJZmoFOyWyZGh2JXKSXDDvRYkLEDzPrN/8/v+V5AhrQ4KXqX
	 x0ttZbQ9H/osH5dY49E4WGthwuI0croI9RMKsTStrs9HGdUPx2sU+idWCZ8i/+fAp
	 iPdlLrtuWIByVa3NWI3yE2bYwkk9Ly1W1tDY3r8OTi+J5Z9/QSbFnaFreYCMaGMoT
	 +dS6CiwO4G6kGz+NgRmVh/bifAW5RF/VzeT+W9yYsV+BwISb4o6X8tVl8Mux4tID3
	 szP3CfBKYGkT3g5i8w==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from client.hidden.invalid by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MNOQy-1wi6Z41JP8-00OZDB; Mon, 18
 May 2026 13:24:28 +0200
Message-ID: <d97b79dc-24b8-446d-997a-d8a37b003363@web.de>
Date: Mon, 18 May 2026 13:24:24 +0200
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
X-Provags-ID: V03:K1:ClnTC+RILrMOo7Arq+ysZiHvtRle/7V2w7AwdQsr0JleXzTN7HK
 LFG3yVXQ5ZWDJtLnKNJFaF0j9Q/2Zh01NNL7Uq6A/PFClJGlY0R59BgEoCw9EvvGPrml2ye
 6E6f45rrx+LDDjKioK8EErghlkfHVXDURUxpR5Cqzcul9Tox5YXYjMObkkjl/T39H2LtGWx
 RUsH12tLCyRdqcepJUh/Q==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:7DkAQz8NlEQ=;9+B13di3sT2nKmFwTLuEX89UtvK
 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
X-Spamd-Bar: ---
X-MailFrom: Markus.Elfring@web.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: FY2VFXSUBZUMWKOAQWBGSZEQNAZ7JZAQ
X-Message-ID-Hash: FY2VFXSUBZUMWKOAQWBGSZEQNAZ7JZAQ
X-Mailman-Approved-At: Tue, 19 May 2026 10:46:26 +0000
CC: LKML <linux-kernel@vger.kernel.org>, Anuj Gupta <anuj20.g@samsung.com>, Jason Gunthorpe <jgg@nvidia.com>, Kanchan Joshi <joshi.k@samsung.com>, Kees Cook <kees@kernel.org>, Nitesh Shetty <nj.shetty@samsung.com>, Phil Cayton <phil.cayton@intel.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 05/10] lib: add dmabuf token infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FY2VFXSUBZUMWKOAQWBGSZEQNAZ7JZAQ/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:rdns,lists.linaro.org:helo,bootlin.com:url,linaro.org:email]
X-Rspamd-Queue-Id: B731E57CBDA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

4oCmDQo+ICsrKyBiL2xpYi9pb19kbWFidWZfdG9rZW4uYw0KPiBAQCAtMCwwICsxLDI3MiBAQA0K
4oCmDQo+ICtpbnQgaW9fZG1hYnVmX2luaXRfbWFwKHN0cnVjdCBpb19kbWFidWZfdG9rZW4gKnRv
a2VuLCBzdHJ1Y3QgaW9fZG1hYnVmX21hcCAqbWFwKQ0KPiArew0KPiArCXN0cnVjdCBpb19kbWFi
dWZfZmVuY2UgKmZlbmNlID0gTlVMTDsNCj4gKwlpbnQgcmV0Ow0KPiArDQo+ICsJZmVuY2UgPSBr
emFsbG9jKHNpemVvZigqZmVuY2UpLCBHRlBfS0VSTkVMKTsNCg0KSG93IGRvIHlvdSB0aGluayBh
Ym91dCB0byB1c2Uga3phbGxvY19vYmooKSBpbnN0ZWFkPw0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxp
bi5jb20vbGludXgvdjcuMS1yYzMvc291cmNlL2luY2x1ZGUvbGludXgvc2xhYi5oI0wxMDM5LUwx
MDQwDQoNCg0K4oCmDQo+ICsJaWYgKCFmZW5jZSkNCj4gKwkJcmV0dXJuIC1FTk9NRU07DQo+ICsN
Cj4gKwlyZXQgPSBwZXJjcHVfcmVmX2luaXQoJm1hcC0+cmVmcywgaW9fZG1hYnVmX21hcF9yZWZz
X3JlbGVhc2UsIDAsIEdGUF9LRVJORUwpOw0KPiArCWlmIChyZXQpIHsNCj4gKwkJa2ZyZWUoZmVu
Y2UpOw0KPiArCQlyZXR1cm4gcmV0Ow0KPiArCX0NCuKApg0KDQpXb3VsZCB5b3UgbGlrZSB0byB1
c2UgdGhlIGF0dHJpYnV0ZSDigJxfX2ZyZWUoa2ZyZWUp4oCdPw0KaHR0cHM6Ly9lbGl4aXIuYm9v
dGxpbi5jb20vbGludXgvdjcuMS1yYzMvc291cmNlL2luY2x1ZGUvbGludXgvc2xhYi5oI0w1MTcN
Cg0KUmVnYXJkcywNCk1hcmt1cw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
