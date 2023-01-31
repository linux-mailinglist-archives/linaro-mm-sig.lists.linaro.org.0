Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A35C68380F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Jan 2023 21:56:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 55E823ED38
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Jan 2023 20:56:37 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by lists.linaro.org (Postfix) with ESMTPS id A21C63ED38
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Jan 2023 20:56:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=lwn.net header.s=20201203 header.b=VH+i9EX2;
	spf=pass (lists.linaro.org: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net;
	dmarc=none
Received: from localhost (unknown [IPv6:2601:281:8300:73::5f6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id AB4FA9A9;
	Tue, 31 Jan 2023 20:56:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 ms.lwn.net AB4FA9A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lwn.net; s=20201203;
	t=1675198579; bh=aWzCX33m88aYoj7KZCtLvfYpIBzCY+C52NkejpJv89M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=VH+i9EX2Fr6aDsotl1qllAdq4WfSYDHY40P8EZYW0TdRNiTqccLx2SdCGZw44FgU6
	 cxkgLXibXvWRZmaB/n7MbDCZQCZcmNk7sODQ8K9gd9YyFQDx3hwaCqXVqYc9nR/Sj7
	 YOK7OUb4EEJPAHaejgVsIn8RShTl/fG+n7VBfHoxspotB716HIfZGUz21VNFJ9dkDm
	 k5484AaFD+PBL/IbVUMetWdp/M9Q87uZko8kR4dRvcSKbE/YBaquqYGkTkJsDrQANJ
	 uh1rGotUYBDrDjCKudiOWLTxaEtU8JsAS0nW37wlBfkVVJadF3LeZUFliKHk71uSCb
	 v5736P22cEZHg==
From: Jonathan Corbet <corbet@lwn.net>
To: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 linux-doc@vger.kernel.org
In-Reply-To: <20230129115917.1229529-1-j.neuschaefer@gmx.net>
References: <20230129115917.1229529-1-j.neuschaefer@gmx.net>
Date: Tue, 31 Jan 2023 13:56:18 -0700
Message-ID: <87leli2zkd.fsf@meer.lwn.net>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A21C63ED38
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[lwn.net:s=20201203];
	R_SPF_ALLOW(-0.20)[+a:mail.lwn.net];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmx.net,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[gmx.net,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:63949, ipnet:45.79.64.0/19, country:SG];
	DKIM_TRACE(0.00)[lwn.net:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	URIBL_BLOCKED(0.00)[lwn.net:dkim];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[lwn.net];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
Message-ID-Hash: BLJ363EIGVY42DRM7A7R3R23QWBEZVDT
X-Message-ID-Hash: BLJ363EIGVY42DRM7A7R3R23QWBEZVDT
X-MailFrom: corbet@lwn.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Add "dma-buf" to title of documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BLJ363EIGVY42DRM7A7R3R23QWBEZVDT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Sm9uYXRoYW4gTmV1c2Now6RmZXIgPGoubmV1c2NoYWVmZXJAZ214Lm5ldD4gd3JpdGVzOg0KDQo+
IFRvIG1ha2UgaXQgZWFzaWVyIHRvIGZpbmQgdGhlIGRtYS1idWYgZG9jdW1lbnRhdGlvbiB3aGVu
IGxvb2tpbmcgdGhyb3VnaA0KPiB0YWJsZXMtb2YtY29udGVudHMgZXRjLiwgcHV0IHRoZSBuYW1l
ICJkbWEtYnVmIiBpbiB0aGUgdGl0bGUuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEpvbmF0aGFuIE5l
dXNjaMOkZmVyIDxqLm5ldXNjaGFlZmVyQGdteC5uZXQ+DQo+IC0tLQ0KPiAgRG9jdW1lbnRhdGlv
bi9kcml2ZXItYXBpL2RtYS1idWYucnN0IHwgNCArKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0IGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2Rt
YS1idWYucnN0DQo+IGluZGV4IDYyMmI4MTU2ZDIxMjcuLjYxYjZmNDJlZDBmMTggMTAwNjQ0DQo+
IC0tLSBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdA0KPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QNCj4gQEAgLTEsNSArMSw1IEBADQo+IC1C
dWZmZXIgU2hhcmluZyBhbmQgU3luY2hyb25pemF0aW9uDQo+IC09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09DQo+ICtCdWZmZXIgU2hhcmluZyBhbmQgU3luY2hyb25pemF0aW9uIChk
bWEtYnVmKQ0KPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0N
Cg0KQXBwbGllZCwgdGhhbmtzLg0KDQpqb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxp
bmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
