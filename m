Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IE2AAx5nHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:16:14 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1F76287B4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:16:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA6DE4098D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:16:12 +0000 (UTC)
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.3])
	by lists.linaro.org (Postfix) with ESMTPS id 810F040512
	for <linaro-mm-sig@lists.linaro.org>; Fri, 29 May 2026 11:47:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=163.com header.s=s110527 header.b="c Rgk3b1";
	spf=pass (lists.linaro.org: domain of w15303746062@163.com designates 117.135.210.3 as permitted sender) smtp.mailfrom=w15303746062@163.com;
	dmarc=pass (policy=none) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=94GyrtKUPcw6dUudljrdpDPI38g/F1ms8pwc++tMTSI=; b=c
	Rgk3b1hQkT6UQA8SK784y7gFHKJ5xWSNVvi3iaxZq7e78qRe5p/D1EdYCJVFzXCg
	tizlsk8uODVdo2OD1HS6AxAV1EqfJW2BFHba5PnZC8oCoep1XK8gVSZRL79/YFHf
	2o0nRT8OMu/dR2uIP0zoQ2oYqnKvD9CRlNJq9kxBVo=
Received: from w15303746062$163.com ( [113.200.174.80] ) by
 ajax-webmail-wmsvr-40-124 (Coremail) ; Fri, 29 May 2026 19:45:42 +0800
 (CST)
X-Originating-IP: [113.200.174.80]
Date: Fri, 29 May 2026 19:45:42 +0800 (CST)
From: w15303746062  <w15303746062@163.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260403(27802f6d) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <bb4d3330-822e-45ae-94f4-65ba0e351f57@amd.com>
References: <0e12ce28-f5b7-4ffa-849c-df9ad1796e22@amd.com>
 <20260528132932.1078483-1-w15303746062@163.com>
 <62c256eb-1df4-4633-8040-222895b54f97@amd.com>
 <7bbb8946.9d19.19e6ed958df.Coremail.w15303746062@163.com>
 <bb4d3330-822e-45ae-94f4-65ba0e351f57@amd.com>
X-NTES-SC: AL_Qu2TAvyeukkv5CiRYOkfmU0Qguw9Xcq5uPkj34FWN5t8jAvp6BgifHBkMWLY9tKqBSCQtgC+cAJg08FoUqNhfqckIc+3Gw44gLYit/sDw/2vEA==
MIME-Version: 1.0
Message-ID: <5ffc2647.95cf.19e738df1f7.Coremail.w15303746062@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: fCgvCgDXPyxnfBlqz22qAA--.908W
X-CM-SenderInfo: jzrvjiatxuliiws6il2tof0z/xtbC4wcZ-GoZfGfigQAA3K
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-Spamd-Bar: /
X-MailFrom: w15303746062@163.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: DMWI2OPWAGYV5EFKABTXQNLVWW5RT75M
X-Message-ID-Hash: DMWI2OPWAGYV5EFKABTXQNLVWW5RT75M
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:16:00 +0000
CC: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, sumit.semwal@linaro.org, jeffy.chen@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mingyu Wang <25181214217@stu.xidian.edu.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/prime: fix dangling dmabuf entries after handle release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DMWI2OPWAGYV5EFKABTXQNLVWW5RT75M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.59 / 15.00];
	DATE_IN_PAST(1.00)[89];
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
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	HAS_X_PRIO_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[163.com:-];
	HAS_XOIP(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[w15303746062@163.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[163.com];
	NEURAL_HAM(-0.00)[-0.961];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9D1F76287B4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Christian,

Thank you for your guidance and patience throughout this discussion.

After further investigation, I realize that identifying the precise
root cause requires a deeper understanding of the DRM subsystem and
access to the specific syzkaller reproducer, which I currently lack.

To avoid wasting your time with incomplete patches, I'll step back
from this issue for now and continue learning the codebase. If I
manage to reproduce the problem locally or find more concrete
evidence, I'll follow up with a proper analysis.

Thank you again for the review and the valuable lessons.

Regards,
Mingyu
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
