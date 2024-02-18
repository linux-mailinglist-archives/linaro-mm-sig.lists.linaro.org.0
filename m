Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8476E859843
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Feb 2024 18:47:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58CAA40C0C
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 18 Feb 2024 17:47:13 +0000 (UTC)
Received: from smtp.smtpout.orange.fr (smtp-19.smtpout.orange.fr [80.12.242.19])
	by lists.linaro.org (Postfix) with ESMTPS id 684B73F96C
	for <linaro-mm-sig@lists.linaro.org>; Sun, 18 Feb 2024 17:46:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=wanadoo.fr header.s=t20230301 header.b=SD9wlefO;
	spf=pass (lists.linaro.org: domain of christophe.jaillet@wanadoo.fr designates 80.12.242.19 as permitted sender) smtp.mailfrom=christophe.jaillet@wanadoo.fr;
	dmarc=pass (policy=quarantine) header.from=wanadoo.fr
Received: from fedora.home ([92.140.202.140])
	by smtp.orange.fr with ESMTPA
	id blFbr8qYHiCLsblFer7StJ; Sun, 18 Feb 2024 18:46:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1708278417;
	bh=y2+kKbrWEFY2/pmLK9szqs3+euOSxAcesJDdReAip00=;
	h=From:To:Cc:Subject:Date;
	b=SD9wlefOwXg6avVhwSrVQdg+pRLNLNGc+ZUkn8lC/1XFjrHZc30uIj2jPvkEWP5cb
	 wiHSjYsY5V2op+Ln67qbUlLXw/7k3gDzmSapsEgNjU2FE7ZQFZeRAuDAkPHNJi0+9i
	 3O0ClCSTsfy7DletOKheud1v1mlIm1LkH2827FumbJLNPbd7ozcZdiM34zTIQM6eIp
	 iFy+zsBoGPfT58YXmqfV0/faepuFDWLu0whT+sljy78xCEZdC8SGTXALv3bim/xS+r
	 z6Hjxmm8jvIpbKthLpg3OcdQEbqDKstm8BPQdu3EnvoPuV1rqWapIbUpBqLWwioruD
	 Hs+GmnM6RYFgQ==
X-ME-Helo: fedora.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 18 Feb 2024 18:46:57 +0100
X-ME-IP: 92.140.202.140
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: gustavo@embeddedor.com,
	keescook@chromium.org,
	Gerd Hoffmann <kraxel@redhat.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun, 18 Feb 2024 18:46:44 +0100
Message-ID: <f75d0426a17b57dbddacd7da345c1c62a3dbb7ce.1708278363.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-Rspamd-Queue-Id: 684B73F96C
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.40 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[wanadoo.fr,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[wanadoo.fr:s=t20230301];
	R_SPF_ALLOW(-0.20)[+ip4:80.12.242.0/25];
	MIME_GOOD(-0.10)[text/plain];
	ONCE_RECEIVED(0.10)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_ENVFROM(0.00)[wanadoo.fr];
	ASN(0.00)[asn:3215, ipnet:80.12.240.0/20, country:FR];
	FREEMAIL_FROM(0.00)[wanadoo.fr];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,wanadoo.fr,lists.freedesktop.org,lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[80.12.242.19:from];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[wanadoo.fr:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 72N2IDPNRSLXBIDMBLONUMKPHT3PFXIT
X-Message-ID-Hash: 72N2IDPNRSLXBIDMBLONUMKPHT3PFXIT
X-MailFrom: christophe.jaillet@wanadoo.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, Christophe JAILLET <christophe.jaillet@wanadoo.fr>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] udmabuf: Fix a potential (and unlikely) access to unallocated memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/72N2IDPNRSLXBIDMBLONUMKPHT3PFXIT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If 'list_limit' is set to a very high value, 'lsize' computation could
overflow if 'head.count' is big enough.

In such a case, udmabuf_create() would access to memory beyond 'list'.

Use memdup_array_user() which checks for overflow.

While at it, include <linux/string.h>.

Fixes: fbb0de795078 ("Add udmabuf misc device")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
v2: - Use memdup_array_user()   [Kees Cook]
    - Use sizeof(*list)   [Gustavo A. R. Silva]
    - Add include <linux/string.h>

v1: https://lore.kernel.org/all/3e37f05c7593f1016f0a46de188b3357cbbd0c0b.1695060389.git.christophe.jaillet@wanadoo.fr/

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/dma-buf/udmabuf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
index c40645999648..5728948ea6f2 100644
--- a/drivers/dma-buf/udmabuf.c
+++ b/drivers/dma-buf/udmabuf.c
@@ -11,6 +11,7 @@
 #include <linux/module.h>
 #include <linux/shmem_fs.h>
 #include <linux/slab.h>
+#include <linux/string.h>
 #include <linux/udmabuf.h>
 #include <linux/vmalloc.h>
 #include <linux/iosys-map.h>
@@ -314,14 +315,13 @@ static long udmabuf_ioctl_create_list(struct file *filp, unsigned long arg)
 	struct udmabuf_create_list head;
 	struct udmabuf_create_item *list;
 	int ret = -EINVAL;
-	u32 lsize;
 
 	if (copy_from_user(&head, (void __user *)arg, sizeof(head)))
 		return -EFAULT;
 	if (head.count > list_limit)
 		return -EINVAL;
-	lsize = sizeof(struct udmabuf_create_item) * head.count;
-	list = memdup_user((void __user *)(arg + sizeof(head)), lsize);
+	list = memdup_array_user((void __user *)(arg + sizeof(head)),
+				 sizeof(*list), head.count);
 	if (IS_ERR(list))
 		return PTR_ERR(list);
 
-- 
2.43.2

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
