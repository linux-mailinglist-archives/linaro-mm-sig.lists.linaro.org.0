Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7CD8BC2F6
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 20:00:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 84B37447F5
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  5 May 2024 18:00:18 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 790C33F0A4
	for <linaro-mm-sig@lists.linaro.org>; Sun,  5 May 2024 18:00:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux-foundation.org header.s=korg header.b=CZtZ4Kss;
	spf=pass (lists.linaro.org: domain of torvalds@linux-foundation.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=torvalds@linux-foundation.org;
	dmarc=none
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 06CD360A0C;
	Sun,  5 May 2024 18:00:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 563D9C113CC;
	Sun,  5 May 2024 18:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
	s=korg; t=1714932003;
	bh=TsViQ/wYOfXwpC4HIbCA3YZAn4taAzdXrsvEgMW9B4A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CZtZ4Kss4M1ugKJ7mNWZqHBV202HqoMwtZlcRjCpwHl674Vss/9EoYPFiv6Kb4FeD
	 tHC4/QlBc/TNWEyBH7IT/ScaeO/01P3qAeR+FGsapRFZT4Yn6EJc4pRu0BLRUe+fhe
	 9HecR26VCfGEdlB9PzGLrIhnvWf+OU1PPMzCB+EE=
From: Linus Torvalds <torvalds@linux-foundation.org>
To: torvalds@linux-foundation.org
Date: Sun,  5 May 2024 10:55:57 -0700
Message-ID: <20240505175556.1213266-2-torvalds@linux-foundation.org>
X-Mailer: git-send-email 2.44.0.330.g4d18c88175
In-Reply-To: <CAHk-=wgMzzfPwKc=8yBdXwSkxoZMZroTCiLZTYESYD3BC_7rhQ@mail.gmail.com>
References: <CAHk-=wgMzzfPwKc=8yBdXwSkxoZMZroTCiLZTYESYD3BC_7rhQ@mail.gmail.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 790C33F0A4
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[139.178.84.217:from];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=korg];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[045b454ab35fd82a35fb];
	FREEMAIL_CC(0.00)[kernel.dk,kernel.org,amd.com,lists.freedesktop.org,vger.kernel.org,suse.cz,chromium.org,labbott.name,lists.linaro.org,gmail.com,linaro.org,syzkaller.appspotmail.com,googlegroups.com,zeniv.linux.org.uk];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[18];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 2QUBEOY4GX4YWHOYRC5NDODQCJN7TVU3
X-Message-ID-Hash: 2QUBEOY4GX4YWHOYRC5NDODQCJN7TVU3
X-MailFrom: torvalds@linux-foundation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: axboe@kernel.dk, brauner@kernel.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, io-uring@vger.kernel.org, jack@suse.cz, keescook@chromium.org, laura@labbott.name, linaro-mm-sig@lists.linaro.org, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, minhquangbui99@gmail.com, sumit.semwal@linaro.org, syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com, syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2] epoll: be better about file lifetimes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2QUBEOY4GX4YWHOYRC5NDODQCJN7TVU3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

epoll can call out to vfs_poll() with a file pointer that may race with
the last 'fput()'. That would make f_count go down to zero, and while
the ep->mtx locking means that the resulting file pointer tear-down will
be blocked until the poll returns, it means that f_count is already
dead, and any use of it won't actually get a reference to the file any
more: it's dead regardless.

Make sure we have a valid ref on the file pointer before we call down to
vfs_poll() from the epoll routines.

Link: https://lore.kernel.org/lkml/0000000000002d631f0615918f1e@google.com/
Reported-by: syzbot+045b454ab35fd82a35fb@syzkaller.appspotmail.com
Reviewed-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
---

Changes since v1:

 - add Link, Reported-by, and Jens' reviewed-by. And sign off on it
   because it looks fine to me and we have some testing now.

 - move epi_fget() closer to the user

 - more comments about the background

 - remove the rcu_read_lock(), with the comment explaining why it's not
   needed

 - note about returning zero rather than something like EPOLLERR|POLLHUP
   for a file that is going away

 fs/eventpoll.c | 42 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/fs/eventpoll.c b/fs/eventpoll.c
index 882b89edc52a..a3f0f868adc4 100644
--- a/fs/eventpoll.c
+++ b/fs/eventpoll.c
@@ -979,6 +979,37 @@ static __poll_t __ep_eventpoll_poll(struct file *file, poll_table *wait, int dep
 	return res;
 }
 
+/*
+ * The ffd.file pointer may be in the process of
+ * being torn down due to being closed, but we
+ * may not have finished eventpoll_release() yet.
+ *
+ * Normally, even with the atomic_long_inc_not_zero,
+ * the file may have been free'd and then gotten
+ * re-allocated to something else (since files are
+ * not RCU-delayed, they are SLAB_TYPESAFE_BY_RCU).
+ *
+ * But for epoll, users hold the ep->mtx mutex, and
+ * as such any file in the process of being free'd
+ * will block in eventpoll_release_file() and thus
+ * the underlying file allocation will not be free'd,
+ * and the file re-use cannot happen.
+ *
+ * For the same reason we can avoid a rcu_read_lock()
+ * around the operation - 'ffd.file' cannot go away
+ * even if the refcount has reached zero (but we must
+ * still not call out to ->poll() functions etc).
+ */
+static struct file *epi_fget(const struct epitem *epi)
+{
+	struct file *file;
+
+	file = epi->ffd.file;
+	if (!atomic_long_inc_not_zero(&file->f_count))
+		file = NULL;
+	return file;
+}
+
 /*
  * Differs from ep_eventpoll_poll() in that internal callers already have
  * the ep->mtx so we need to start from depth=1, such that mutex_lock_nested()
@@ -987,14 +1018,23 @@ static __poll_t __ep_eventpoll_poll(struct file *file, poll_table *wait, int dep
 static __poll_t ep_item_poll(const struct epitem *epi, poll_table *pt,
 				 int depth)
 {
-	struct file *file = epi->ffd.file;
+	struct file *file = epi_fget(epi);
 	__poll_t res;
 
+	/*
+	 * We could return EPOLLERR | EPOLLHUP or something,
+	 * but let's treat this more as "file doesn't exist,
+	 * poll didn't happen".
+	 */
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
