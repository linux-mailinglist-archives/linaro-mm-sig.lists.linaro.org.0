Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8BA680F07
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Jan 2023 14:31:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CEA2740EC2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Jan 2023 13:31:24 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by lists.linaro.org (Postfix) with ESMTPS id 2D0D33EE2C
	for <linaro-mm-sig@lists.linaro.org>; Sun, 29 Jan 2023 11:59:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmx.net header.s=s31663417 header.b=Mgr8rUWo;
	spf=pass (lists.linaro.org: domain of j.neuschaefer@gmx.net designates 212.227.17.21 as permitted sender) smtp.mailfrom=j.neuschaefer@gmx.net;
	dmarc=pass (policy=none) header.from=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net; s=s31663417;
	t=1674993565; bh=dsYA3TJFoKxRXCyOmwr6lbeTv9iP7lBwN1Z82eU3mBE=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
	b=Mgr8rUWoNDXTxMZhQ+9BnfLs1XhOD/7GNsKxCWWXsnZi8QYWWt6xnoT8XpdFtnzjM
	 wdND8adrg/LH6/TcyDILhU26jQIz7IKQ1KwSZrkUI9Qq/mjMP01ig2o946xAq41DmQ
	 xD9ao13Iwc+PwbV5wCNTVLZNLqH2xvanIk1H1dcbsi48HQSfKu734FsFVXZDNhUtu1
	 UpHK1ONXxW5lTwVaUM35kykMRZkjf2uFl+bd/wOsLlkXotDG7AqTv+uMOXqWgsnApw
	 SM4bD6jWMqyE+Bnie04trUS4rdO9sP1xGdAkK6ghnMYp5DV0o3xus7/3FQdfYNPbFI
	 zCd8Nd/65XaJQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from probook ([95.223.44.193]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MYNJq-1p8IaU3vAw-00VMyl; Sun, 29
 Jan 2023 12:59:24 +0100
From: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: linux-doc@vger.kernel.org
Date: Sun, 29 Jan 2023 12:59:17 +0100
Message-Id: <20230129115917.1229529-1-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:oi5JlNYNUWp/c7+muHI4kjvbKTuF7k4nnmPz0F0CEVayxmY3pvC
 Wb8boStiLvOC2QrclCRf8hl1M0OO0hLMItz0N9D6u8oQ2kSXEl2+Mxn18usJIiQYLmazR4L
 vcy6MRZ0uK8bSGr490VkZrYD3rGBLOZcwPz5FKuLTMapfHtmXBgEevzzmSG4zFn/iImQcX3
 87ZqC7McaihczOjLb6XPQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:huz1cX/hXdw=;NCwhynrk+L8Fjw8o9/ouSpJiPBi
 +JinvjApiOya4DA70vc1hjj5tfjP79zPjCkwOAloe/Xg4e7UB/XXw5gV1Czbzve9DXNXmZbug
 vj3IgR0PMLgjBGsUEb1yChibSyJl3ewT9cgWi2m2ROmTEzSWEjU5LhoX5HlE0bJ3Oi4k75vER
 P2qEPgfuU78o5vyW/4GaniG10vLljm/5PmwHvuPAHdWb+YRz+veZq41FK3rDpbsb1DOzfbSX4
 oSPeNmqjPGurYB+Bred3J9KNEzcLraLOngyfOgxqYtm1ae7M2p+OGPq0CX989GOoP8t+WZ6QV
 oJi9Nn2JxllNI5DY4SZ9rNA7CcDFevPm2rzKaTpikEp2mbP/VFjVDg2Vre0MoASzMSCiVhTkm
 4TwTzYkboI9UHSM+q0eNKneyQ7W0VNDBFwec9kpCokp7A12btvWMqUZsNCuwzRLbw9/Tq1U/5
 ZqIZF0VZUScbKs2tPVSaBvT6EMh2avVPGDI5Yk0/EGqQKD7deOwSoQzEmmtOcavVxc9D1QYKF
 nvojhqaUTaWlmn+gb50QStfEws/CVPhKlvz3XPYWT6aj31V1lnS4ZyX4Nk79QO6j1NkhHh0aY
 CnIu4cdiPb5E5N09JqAfaVN8YglXkmfqcrKBxkW+IObE9iBxX5d5YAWfmF4jaBrZEqrzPQ2QK
 PuDRz3zxbqm+ChFyetKMX/mZjgf/1li6bSQ3/vDOZyBeWCLAHGVxdSsNdZKsW0xVU9bxj5dXr
 MGCDEMKvgE7y5q9FAX4hl2SA85hMa9f4DqOXCLicVp39PVEj/yVySl2a5uaLGdqsnl240Nx3X
 WtIvmMnCORLzFmhAekHRLuCy0P5FflN4x6Jl7E8/pyJJoM/skf9wN+6nh9r9iWdEnwGrmRT1A
 9JVECEv6Y6lhGwh5C9RydAosTcOOh3NP826+SLIhfxmNXBgub3kvBJMnGho1O3eWDLwOyzFMl
 aoWMSvvIweuVsytdLYgQDkxKhlc=
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2D0D33EE2C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-3.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmx.net,none];
	R_SPF_ALLOW(-0.20)[+ip4:212.227.17.0/27];
	R_DKIM_ALLOW(-0.20)[gmx.net:s=s31663417];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmx.net];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmx.net,linaro.org,amd.com,lwn.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:8560, ipnet:212.227.0.0/16, country:DE];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[212.227.17.21:from];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmx.net:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmx.net];
	TO_DN_SOME(0.00)[];
	NEURAL_SPAM(0.00)[0.455];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-MailFrom: j.neuschaefer@gmx.net
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NT52ABDZOBXY4MSVREZQPM4IZLW4ENBW
X-Message-ID-Hash: NT52ABDZOBXY4MSVREZQPM4IZLW4ENBW
X-Mailman-Approved-At: Mon, 30 Jan 2023 13:31:09 +0000
CC: =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>, Jonathan Corbet <corbet@lwn.net>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: Add "dma-buf" to title of documentation
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NT52ABDZOBXY4MSVREZQPM4IZLW4ENBW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG8gbWFrZSBpdCBlYXNpZXIgdG8gZmluZCB0aGUgZG1hLWJ1ZiBkb2N1bWVudGF0aW9uIHdoZW4g
bG9va2luZyB0aHJvdWdoDQp0YWJsZXMtb2YtY29udGVudHMgZXRjLiwgcHV0IHRoZSBuYW1lICJk
bWEtYnVmIiBpbiB0aGUgdGl0bGUuDQoNClNpZ25lZC1vZmYtYnk6IEpvbmF0aGFuIE5ldXNjaMOk
ZmVyIDxqLm5ldXNjaGFlZmVyQGdteC5uZXQ+DQotLS0NCiBEb2N1bWVudGF0aW9uL2RyaXZlci1h
cGkvZG1hLWJ1Zi5yc3QgfCA0ICsrLS0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBp
L2RtYS1idWYucnN0IGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0DQppbmRl
eCA2MjJiODE1NmQyMTI3Li42MWI2ZjQyZWQwZjE4IDEwMDY0NA0KLS0tIGEvRG9jdW1lbnRhdGlv
bi9kcml2ZXItYXBpL2RtYS1idWYucnN0DQorKysgYi9Eb2N1bWVudGF0aW9uL2RyaXZlci1hcGkv
ZG1hLWJ1Zi5yc3QNCkBAIC0xLDUgKzEsNSBAQA0KLUJ1ZmZlciBTaGFyaW5nIGFuZCBTeW5jaHJv
bml6YXRpb24NCi09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQorQnVmZmVyIFNo
YXJpbmcgYW5kIFN5bmNocm9uaXphdGlvbiAoZG1hLWJ1ZikNCis9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KDQogVGhlIGRtYS1idWYgc3Vic3lzdGVtIHByb3Zp
ZGVzIHRoZSBmcmFtZXdvcmsgZm9yIHNoYXJpbmcgYnVmZmVycyBmb3INCiBoYXJkd2FyZSAoRE1B
KSBhY2Nlc3MgYWNyb3NzIG11bHRpcGxlIGRldmljZSBkcml2ZXJzIGFuZCBzdWJzeXN0ZW1zLCBh
bmQNCi0tDQoyLjM5LjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
