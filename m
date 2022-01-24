Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EF94B6479
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 08:38:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84CCE3EE71
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Feb 2022 07:38:33 +0000 (UTC)
Received: from szxga08-in.huawei.com (szxga08-in.huawei.com [45.249.212.255])
	by lists.linaro.org (Postfix) with ESMTPS id 707603ECC4
	for <linaro-mm-sig@lists.linaro.org>; Mon, 24 Jan 2022 02:37:44 +0000 (UTC)
Received: from kwepemi500016.china.huawei.com (unknown [172.30.72.53])
	by szxga08-in.huawei.com (SkyGuard) with ESMTP id 4JhvDt076lz1FCm2;
	Mon, 24 Jan 2022 10:33:49 +0800 (CST)
Received: from kwepemm600017.china.huawei.com (7.193.23.234) by
 kwepemi500016.china.huawei.com (7.221.188.220) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 24 Jan 2022 10:37:41 +0800
Received: from localhost.localdomain (10.175.112.125) by
 kwepemm600017.china.huawei.com (7.193.23.234) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 24 Jan 2022 10:37:40 +0800
From: Peng Liu <liupeng256@huawei.com>
To: <glider@google.com>, <elver@google.com>, <dvyukov@google.com>,
	<corbet@lwn.net>, <sumit.semwal@linaro.org>, <christian.koenig@amd.com>,
	<akpm@linux-foundation.org>
Date: Mon, 24 Jan 2022 02:52:02 +0000
Message-ID: <20220124025205.329752-1-liupeng256@huawei.com>
X-Mailer: git-send-email 2.18.0.huawei.25
MIME-Version: 1.0
X-Originating-IP: [10.175.112.125]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemm600017.china.huawei.com (7.193.23.234)
X-CFilter-Loop: Reflected
X-MailFrom: liupeng256@huawei.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: XSTOYHSBNIXIWLKNY4VHZBBNSOAHP5RX
X-Message-ID-Hash: XSTOYHSBNIXIWLKNY4VHZBBNSOAHP5RX
X-Mailman-Approved-At: Tue, 15 Feb 2022 07:38:30 +0000
CC: kasan-dev@googlegroups.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org, liupeng256@huawei.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH RFC 0/3] Add a module parameter to adjust kfence objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XSTOYHSBNIXIWLKNY4VHZBBNSOAHP5RX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This series make KFENCE to be more convenient to adjust parameters in
not only debug process but also production situations. In different
production and development stage, the demands of memory and CPU
limitations for KFENCE is quite different. In order to satisfy these
demands with a uniform kernel release, dynamically adjust KFENCE
parameters is needed.

Signed-off-by: Peng Liu <liupeng256@huawei.com>

Peng Liu (3):
  kfence: Add a module parameter to adjust kfence objects
  kfence: Optimize branches prediction when sample interval is zero
  kfence: Make test case compatible with run time set sample interval

 Documentation/dev-tools/kfence.rst |  14 ++--
 include/linux/kfence.h             |  10 ++-
 mm/kfence/core.c                   | 113 ++++++++++++++++++++++++-----
 mm/kfence/kfence.h                 |   2 +-
 mm/kfence/kfence_test.c            |  10 +--
 5 files changed, 116 insertions(+), 33 deletions(-)

-- 
2.18.0.huawei.25

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
