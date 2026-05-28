Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJn4NwRnHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:15:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8DF62879E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:15:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC0FA4098E
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:15:47 +0000 (UTC)
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
	by lists.linaro.org (Postfix) with ESMTPS id 128003F8E7
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 12:42:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=163.com header.s=s110527 header.b="G HsVZzX";
	spf=pass (lists.linaro.org: domain of w15303746062@163.com designates 220.197.31.4 as permitted sender) smtp.mailfrom=w15303746062@163.com;
	dmarc=pass (policy=none) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=eqfs4KK63S0TOSE6+RLu6s71mPduUVA0LxwjeQ2pykI=; b=G
	HsVZzXZP50EnuqFQuNvCHI6wfii4vWJ4d7KHSxs48eUIZPyebzqW4Lgq4v9Bch5P
	2UZk9RAZiY1NA8/ZEsZVYV32CsHmjMDBgVLJbwf76fSQRk8Z6wAASFLbJmovgZIM
	9/VXNvA0/xCFgxRDEQwxvOMbAnKCNojagTnpAXz+WM=
Received: from w15303746062$163.com ( [113.200.174.80] ) by
 ajax-webmail-wmsvr-40-149 (Coremail) ; Thu, 28 May 2026 20:40:44 +0800
 (CST)
X-Originating-IP: [113.200.174.80]
Date: Thu, 28 May 2026 20:40:44 +0800 (CST)
From: w15303746062  <w15303746062@163.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260403(27802f6d) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <0e12ce28-f5b7-4ffa-849c-df9ad1796e22@amd.com>
References: <20260528082912.1051262-1-w15303746062@163.com>
 <0e12ce28-f5b7-4ffa-849c-df9ad1796e22@amd.com>
X-NTES-SC: AL_Qu2cC/WcvUgv4iabZukfmU0Qguw9Xcq5uPkj34FWN5t8jCLr2iAKW0JFIHb04eyMFRyerjiMcBZ1+ONjdJh8W6EFDzOAp66oJV0VScdoN1osUg==
MIME-Version: 1.0
Message-ID: <6d351ca7.9904.19e6e99f765.Coremail.w15303746062@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: lSgvCgDX3qLNNxhqaMytAA--.11951W
X-CM-SenderInfo: jzrvjiatxuliiws6il2tof0z/xtbDAA2hhWoYN80SlAAA3n
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Spamd-Bar: -
X-MailFrom: w15303746062@163.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YN5WDB3UTDAPZHVX5OZFSFCDMKC3Y2UX
X-Message-ID-Hash: YN5WDB3UTDAPZHVX5OZFSFCDMKC3Y2UX
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:15:29 +0000
CC: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, sumit.semwal@linaro.org, jeffy.chen@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mingyu Wang <25181214217@stu.xidian.edu.cn>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/prime: Fix unsupervised rb_tree corruption in drm_prime_remove_buf_handle
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YN5WDB3UTDAPZHVX5OZFSFCDMKC3Y2UX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[112];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[163.com:s=s110527];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[163.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,rock-chips.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,stu.xidian.edu.cn];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	HAS_X_PRIO_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[163.com:-];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[w15303746062@163.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	NEURAL_HAM(-0.00)[-0.962];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9E8DF62879E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Christian,

Thank you for the review and for catching this. You are absolutely right, and my analysis was flawed. Adding the lock inside `drm_prime_remove_buf_handle` would indeed cause a recursive deadlock.

The syzkaller crash was originally triggered on the v6.18 kernel. When investigating, I checked the latest mainline source for `drm_prime_remove_buf_handle` itself. Since I didn't see any synchronization changes within that specific function, I incorrectly assumed the concurrency issue was still completely unhandled, failing to notice that the upstream tree properly holds the lock in the caller (`drm_gem_object_release_handle`).

I will dive deeper into the code to see if there is still any hidden race condition under the current locking scheme, or if this is strictly a legacy issue that might only require a stable-tree backport. If a fix is still warranted, I will send a v2 patch.

Thanks again for your time and guidance!

Best regards,
Mingyu Wang
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
