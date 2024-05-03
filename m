Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF038BB565
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 23:14:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6DE3344806
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 May 2024 21:14:58 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 026F83F0A4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 May 2024 21:14:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=korg header.b=BVKMnAK5;
	spf=pass (lists.linaro.org: domain of torvalds@linux-foundation.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=torvalds@linux-foundation.org;
	dmarc=none
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F3222CE1665;
	Fri,  3 May 2024 21:14:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6CC8C116B1;
	Fri,  3 May 2024 21:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
	s=korg; t=1714770885;
	bh=t2ekic1Ld48bCYtZJHBOk19intmuyfbk5wIBifLYucs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BVKMnAK5TKy0dyDdE4060f5p1OqBzeHGS8SvDl2+/8iTGFzv5LnNPIT9vRV724q3y
	 z+oNYqMJVYyvqVjEcctu6QfzEcc4r+WYFrBprlzLn61HrW5Z7Zyhn2o6j0oV76F6jw
	 MEwwgAQOa8Xdv4DIYY62xpBdPYOFbnKxzrL09yBY=
From: Linus Torvalds <torvalds@linux-foundation.org>
To: keescook@chromium.org
Date: Fri,  3 May 2024 14:11:30 -0700
Message-ID: <20240503211129.679762-2-torvalds@linux-foundation.org>
X-Mailer: git-send-email 2.44.0.330.g4d18c88175
In-Reply-To: <202405031110.6F47982593@keescook>
References: <202405031110.6F47982593@keescook>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 026F83F0A4
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=korg];
	RCVD_IN_DNSWL_MED(-0.20)[145.40.73.55:from];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	FREEMAIL_CC(0.00)[kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com,zeniv.linux.org.uk,linux-foundation.org];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: AMFHT443ZWV4ECUZKNZEJXQ3Q7V6PM62
X-Message-ID-Hash: AMFHT443ZWV4ECUZKNZEJXQ3Q7V6PM62
X-MailFrom: torvalds@linux-foundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk, Linus Torvalds <torvalds@linux-foundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] epoll: try to be a _bit_ better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AMFHT443ZWV4ECUZKNZEJXQ3Q7V6PM62/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

epoll is a mess, and does various invalid things in the name of
performance.

Let's try to rein it in a bit. Something like this, perhaps?

Not-yet-signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
---

This is entirely untested, thus the "Not-yet-signed-off-by".  But I
think this may be kind of the right path forward. 

I suspect the ->poll() call is the main case that matters, but there are
other places where eventpoll just looks up the file pointer without then
being very careful about it.  The sock_from_file(epi->ffd.file) uses in
particular should probably also use this to look up the file. 

Comments?

 fs/eventpoll.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/fs/eventpoll.c b/fs/eventpoll.c
index 882b89edc52a..bffa8083ff36 100644
--- a/fs/eventpoll.c
+++ b/fs/eventpoll.c
@@ -285,6 +285,30 @@ static inline void free_ephead(struct epitems_head *head)
 		kmem_cache_free(ephead_cache, head);
 }
 
+/*
+ * The ffd.file pointer may be in the process of
+ * being torn down due to being closed, but we
+ * may not have finished eventpoll_release() yet.
+ *
+ * Technically, even with the atomic_long_inc_not_zero,
+ * the file may have been free'd and then gotten
+ * re-allocated to something else (since files are
+ * not RCU-delayed, they are SLAB_TYPESAFE_BY_RCU).
+ *
+ * But for epoll, we don't much care.
+ */
+static struct file *epi_fget(const struct epitem *epi)
+{
+	struct file *file;
+
+	rcu_read_lock();
+	file = epi->ffd.file;
+	if (!atomic_long_inc_not_zero(&file->f_count))
+		file = NULL;
+	rcu_read_unlock();
+	return file;
+}
+
 static void list_file(struct file *file)
 {
 	struct epitems_head *head;
@@ -987,14 +1011,18 @@ static __poll_t __ep_eventpoll_poll(struct file *file, poll_table *wait, int dep
 static __poll_t ep_item_poll(const struct epitem *epi, poll_table *pt,
 				 int depth)
 {
-	struct file *file = epi->ffd.file;
+	struct file *file = epi_fget(epi);
 	__poll_t res;
 
+	if (!file)
+		return 0;
+
 	pt->_key = epi->event.events;
 	if (!is_file_epoll(file))
 		res = vfs_poll(file, pt);
 	else
 		res = __ep_eventpoll_poll(file, pt, depth);
+	fput(file);
 	return res & epi->event.events;
 }
 
-- 
2.44.0.330.g4d18c88175

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
