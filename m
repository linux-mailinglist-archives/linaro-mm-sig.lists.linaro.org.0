Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMMHAQAu+GnsrAIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 04 May 2026 07:26:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3D64B8815
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 04 May 2026 07:26:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D639440955
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  4 May 2026 05:26:22 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CA164043A
	for <linaro-mm-sig@lists.linaro.org>; Mon,  4 May 2026 05:26:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
From: kachachaissue12@gmail.com
To: linaro-mm-sig@lists.linaro.org
Date: Mon, 04 May 2026 05:26:14 -0000
Message-ID: <177787237463.265031.4361621830044193407@lists.linaro.org>
User-Agent: HyperKitty on http://lists-ec2.96boards.org/
Message-ID-Hash: OYBQYGHK6HST5ZRMSZRLAXTJ3PJEXEA3
X-Message-ID-Hash: OYBQYGHK6HST5ZRMSZRLAXTJ3PJEXEA3
X-MailFrom: kachachaissue12@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] =?utf-8?b?2K3YqNmI2Kgg2LPYp9mK2KrZiNiq2YMg2YXYqtmI2YHYsdipINmE2YTYqNmK2Lkg2YHZiiDYp9mE2KjYrdix2YrZhtiMKV1bKOKtleKcmiDirZU5NzE1NjgwNDQ2OTkg4q2VKV1bKCDYr9mI2KfYoSDYs9in2YrYqtmI2KrZgyDZhdiq2YjZgdixINmB2Yog2KfZhNio2K3YsdmK2YbYjCDZg9mK2YHZitipINi02LHYp9ihINiv2YjYp9ihINiz2KfZitiq2YjYqtmDINmB2Yog2KfZhNio2K3YsdmK2YbYjA==?=
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OYBQYGHK6HST5ZRMSZRLAXTJ3PJEXEA3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: CA3D64B8815
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kachachaissue12@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.730];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]

2K3YqNmI2Kgg2LPYp9mK2KrZiNiq2YMg2YXYqtmI2YHYsdipINmE2YTYqNmK2Lkg2YHZiiDYp9mE
2KjYrdix2YrZhtiMKV1bKOKtleKcmiDirZU5NzE1NjgwNDQ2OTkg4q2VKV1bKCDYr9mI2KfYoSDY
s9in2YrYqtmI2KrZgyDZhdiq2YjZgdixINmB2Yog2KfZhNio2K3YsdmK2YbYjCDZg9mK2YHZitip
INi02LHYp9ihINiv2YjYp9ihINiz2KfZitiq2YjYqtmDINmB2Yog2KfZhNio2K3YsdmK2YbYjA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
