Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFj2BxZnHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:16:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE206287AD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:16:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A31740990
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:16:04 +0000 (UTC)
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	by lists.linaro.org (Postfix) with ESMTPS id ED3C640150
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 13:51:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=163.com header.s=s110527 header.b="E d7QzX0";
	spf=pass (lists.linaro.org: domain of w15303746062@163.com designates 220.197.31.4 as permitted sender) smtp.mailfrom=w15303746062@163.com;
	dmarc=pass (policy=none) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=NFxfsp06lyRCY10yxDG+j91u6X2oQuXM0g9r3DGGHig=; b=E
	d7QzX0uKnB10S1oxHpa+QBT15dBgs5woaNO1VbnJ61uqPB7jUSCIz4VqZz3krhCj
	1ZVGH/tG1vPSfeFc2QsOrAMUqy1RMl8qR2JfIPejp/55EmXLz11z7QQ43yv04POi
	ZvV70Hxuq9scSNu8ko8TCB4vvTODShJKmns+xglOiQ=
Received: from w15303746062$163.com ( [113.200.174.80] ) by
 ajax-webmail-wmsvr-40-149 (Coremail) ; Thu, 28 May 2026 21:49:58 +0800
 (CST)
X-Originating-IP: [113.200.174.80]
Date: Thu, 28 May 2026 21:49:58 +0800 (CST)
From: w15303746062  <w15303746062@163.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260403(27802f6d) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <62c256eb-1df4-4633-8040-222895b54f97@amd.com>
References: <0e12ce28-f5b7-4ffa-849c-df9ad1796e22@amd.com>
 <20260528132932.1078483-1-w15303746062@163.com>
 <62c256eb-1df4-4633-8040-222895b54f97@amd.com>
X-NTES-SC: AL_Qu2cC/WcuUki7iOdYekfmU0Qguw9Xcq5uPkj34FWN5t8jCLr2iAKW0JFIHb04eyMFRyerjiMcBZ1+ONjdJh8W6EFZutYLvilnzrxQVlQsWMr+w==
MIME-Version: 1.0
Message-ID: <7bbb8946.9d19.19e6ed958df.Coremail.w15303746062@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: lSgvCgD3f6cGSBhqZ9GtAA--.11991W
X-CM-SenderInfo: jzrvjiatxuliiws6il2tof0z/xtbC4wazl2oYSAZ8OAAA35
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Spamd-Bar: --
X-MailFrom: w15303746062@163.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DN3GD4HIHMOY5OMB3W7Z356JZ2MAMQ3T
X-Message-ID-Hash: DN3GD4HIHMOY5OMB3W7Z356JZ2MAMQ3T
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:15:29 +0000
CC: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, sumit.semwal@linaro.org, jeffy.chen@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mingyu Wang <25181214217@stu.xidian.edu.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/prime: fix dangling dmabuf entries after handle release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DN3GD4HIHMOY5OMB3W7Z356JZ2MAMQ3T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[163.com:s=s110527];
	DATE_IN_PAST(1.00)[111];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[163.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,rock-chips.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,stu.xidian.edu.cn];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[w15303746062@163.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	HAS_X_PRIO_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.317];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DKIM_TRACE(0.00)[163.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 8BE206287AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGkgQ2hyaXN0aWFuLAoKVGhhbmsgeW91IGZvciBpbnNpc3Rpbmcgb24gdGhpcy4gSSd2ZSBub3cg
Z29uZSB0aHJvdWdoIGFsbCBjYWxsZXJzCm9mIGRybV9wcmltZV9hZGRfYnVmX2hhbmRsZSgpIGlu
IGRybV9wcmltZS5jLgoKWW91IGFyZSBhYnNvbHV0ZWx5IHJpZ2h0OiBib3RoIGRybV9nZW1fcHJp
bWVfZmRfdG9faGFuZGxlKCkgYW5kCmRybV9nZW1fcHJpbWVfaGFuZGxlX3RvX2RtYWJ1ZigpIHBl
cmZvcm0gdGhlIGxvb2t1cCB1bmRlcgpwcmltZV9mcHJpdi0+bG9jayBiZWZvcmUgYWRkaW5nLCBz
byBhIGR1cGxpY2F0ZSBoYW5kbGUgc2hvdWxkIGluZGVlZApuZXZlciBiZSBpbnNlcnRlZCB0aHJv
dWdoIHRob3NlIHBhdGhzLgoKVGhhdCBzYWlkLCB0aGUgc3l6a2FsbGVyIHJlcG9ydCBjbGVhcmx5
IHNob3dzIHRoYXQgdGhlIGRtYWJ1ZnMgdHJlZQppcyBub3QgZW1wdHkgd2hlbiBkcm1fcHJpbWVf
ZGVzdHJveV9maWxlX3ByaXZhdGUoKSBydW5zLCB3aGljaCBtZWFucwpzb21lIGVudHJ5IHdhc24n
dCByZW1vdmVkLiBHaXZlbiB0aGF0IHRoZSBub3JtYWwgYWRkL3JlbW92ZSBwYXRocwphcHBlYXIg
Y29ycmVjdCwgdGhlIHRyaWdnZXIgbWlnaHQgYmUgc29tZXRoaW5nIG1vcmUgc3VidGxlIOKAlCBw
ZXJoYXBzCmEgZHJpdmVyLXNwZWNpZmljIGNhbGxiYWNrIHRoYXQgYnlwYXNzZXMgdGhlIGdlbmVy
aWMgaGVscGVycywgb3IgYW4KZXJyb3IgcGF0aCB0aGF0IGxlYXZlcyBhbiBvcnBoYW4gaW4gdGhl
IGRtYWJ1ZnMgdHJlZS4gSSBoYXZlbid0IGJlZW4KYWJsZSB0byBpZGVudGlmeSB0aGUgZXhhY3Qg
dHJpZ2dlciB5ZXQuCgpUaGUgcHJvcG9zZWQgY2hhbmdlIHRvIGRybV9wcmltZV9yZW1vdmVfYnVm
X2hhbmRsZSgpIChyZXN0YXJ0IHNlYXJjaAppbnN0ZWFkIG9mIGJyZWFrKSBpcyBpbnRlbmRlZCBh
cyBhIHNtYWxsIHJvYnVzdG5lc3MgaW1wcm92ZW1lbnQsIG5vdAphIGZpeCBmb3IgYSBjb25maXJt
ZWQgcmFjZS4gSW4gdGhlIG5vcm1hbCBjYXNlIGl0IHdpbGwgc3RpbGwgZXhlY3V0ZQpvbmx5IG9u
Y2UsIGJ1dCBpZiB0aGUgdHJlZXMgZXZlciBiZWNvbWUgaW5jb25zaXN0ZW50IGZvciBhbnkgcmVh
c29uLAppdCB3aWxsIGNsZWFuIHVwIGFsbCBlbnRyaWVzIGZvciB0aGUgZ2l2ZW4gaGFuZGxlIGFu
ZCBwcmV2ZW50IHRoZQpXQVJOSU5HLgoKV291bGQgeW91IGJlIG9rYXkgd2l0aCBzdWNoIGEgZGVm
ZW5zaXZlIGFwcHJvYWNoLCBvciB3b3VsZCB5b3UgcHJlZmVyCnRoYXQgd2UgZmlyc3QgdHJhY2sg
ZG93biB0aGUgcHJlY2lzZSB0cmlnZ2VyIChlLmcuIHdpdGggYWRkaXRpb25hbApXQVJOcyBvciB0
cmFjaW5nKT8KClRoYW5rcywKTWluZ3l1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFy
by1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
