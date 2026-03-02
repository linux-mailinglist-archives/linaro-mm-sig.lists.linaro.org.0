Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDwhLi0b4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:23:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 530CD4129DB
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:23:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6AE4644BA3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:23:56 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 45B4E4016E
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 20:33:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=okCZ7zIR;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of jlayton@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=jlayton@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8F198441C6;
	Mon,  2 Mar 2026 20:33:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46CE0C19425;
	Mon,  2 Mar 2026 20:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772483618;
	bh=Dx6OCOLFpUWbkqaMn6d9+Y3vE0L4Ow2c4ymAgPNZfJQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=okCZ7zIRi2VMtVRStMgeE9/9/F9lJWYjHtNePHRMge9nw1VTUruhkij0Gf8cC6y6r
	 G4rHlM6H0C++oWBwkVBsR26eAC7ZtUWQpfs/Zi9QMT1AFXPNmHG2Gm8QFhBQzkygv8
	 lmQBzV5o6/8hPGE5LBDrRlSQzF1o5IXJaB9EEbedA7HJb4/5UQbRX9J/RyBtQ6DC5Z
	 sVLcD9NwQNM0fk8Xxv1YzHVgsdgon5Vky7hd7Vp2dBGl9oZEbWQOmprV8lnxaRkgee
	 jhq7TJllzSjtAXzgalV9glJpn3bLs4MyriK1nZevx7CjG3/ajpbk03d9PVegOAZ2+/
	 ZXKzBbQmchKSg==
From: Jeff Layton <jlayton@kernel.org>
Date: Mon, 02 Mar 2026 15:24:20 -0500
MIME-Version: 1.0
Message-Id: <20260302-iino-u64-v2-36-e5388800dae0@kernel.org>
References: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org>
In-Reply-To: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org>
To: Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Matthew Wilcox <willy@infradead.org>, Eric Biggers <ebiggers@kernel.org>,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Muchun Song <muchun.song@linux.dev>,
 Oscar Salvador <osalvador@suse.de>, David Hildenbrand <david@kernel.org>,
 David Howells <dhowells@redhat.com>, Paulo Alcantara <pc@manguebit.org>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Jan Kara <jack@suse.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>,
 Trond Myklebust <trondmy@kernel.org>, Anna Schumaker <anna@kernel.org>,
 Chuck Lever <chuck.lever@oracle.com>, NeilBrown <neil@brown.name>,
 Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 Tom Talpey <tom@talpey.com>, Steve French <sfrench@samba.org>,
 Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 Shyam Prasad N <sprasad@microsoft.com>,
 Bharath SM <bharathsm@microsoft.com>,
 Alexander Aring <alex.aring@gmail.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Viacheslav Dubeyko <slava@dubeyko.com>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 David Sterba <dsterba@suse.com>, Marc Dionne <marc.dionne@auristor.com>,
 Ian Kent <raven@themaw.net>, Luis de Bethencourt <luisbg@kernel.org>,
 Salah Triki <salah.triki@gmail.com>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Ilya Dryomov <idryomov@gmail.com>, Alex Markuze <amarkuze@redhat.com>,
 Jan Harkes <jaharkes@cs.cmu.edu>, coda@cs.cmu.edu,
 Nicolas Pitre <nico@fluxnic.net>, Tyler Hicks <code@tyhicks.com>,
 Amir Goldstein <amir73il@gmail.com>, Christoph Hellwig <hch@infradead.org>,
 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 Yangtao Li <frank.li@vivo.com>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 David Woodhouse <dwmw2@infradead.org>, Richard Weinberger <richard@nod.at>,
 Dave Kleikamp <shaggy@kernel.org>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>,
 Mike Marshall <hubcap@omnibond.com>,
 Martin Brandenburg <martin@omnibond.com>,
 Miklos Szeredi <miklos@szeredi.hu>, Anders Larsen <al@alarsen.net>,
 Zhihao Cheng <chengzhihao1@huawei.com>, Damien Le Moal <dlemoal@kernel.org>,
 Naohiro Aota <naohiro.aota@wdc.com>, Johannes Thumshirn <jth@kernel.org>,
 John Johansen <john.johansen@canonical.com>,
 Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
 "Serge E. Hallyn" <serge@hallyn.com>, Mimi Zohar <zohar@linux.ibm.com>,
 Roberto Sassu <roberto.sassu@huawei.com>,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>,
 Eric Snowberg <eric.snowberg@oracle.com>, Fan Wu <wufan@kernel.org>,
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 Ondrej Mosnacek <omosnace@redhat.com>,
 Casey Schaufler <casey@schaufler-ca.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Eric Dumazet <edumazet@google.com>,
 Kuniyuki Iwashima <kuniyu@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Willem de Bruijn <willemb@google.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Simon Horman <horms@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 James Clark <james.clark@linaro.org>, "Darrick J. Wong" <djwong@kernel.org>,
 Martin Schiller <ms@dev.tdt.de>, Eric Paris <eparis@redhat.com>,
 Joerg Reuter <jreuter@yaina.de>, Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
 Oliver Hartkopp <socketcan@hartkopp.net>,
 Marc Kleine-Budde <mkl@pengutronix.de>, David Ahern <dsahern@kernel.org>,
 Neal Cardwell <ncardwell@google.com>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Remi Denis-Courmont <courmisch@gmail.com>,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Xin Long <lucien.xin@gmail.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2103; i=jlayton@kernel.org;
 h=from:subject:message-id; bh=Dx6OCOLFpUWbkqaMn6d9+Y3vE0L4Ow2c4ymAgPNZfJQ=;
 b=owEBbQKS/ZANAwAKAQAOaEEZVoIVAcsmYgBppfH4APwcmWhVQ+KPcyAzVeyyvBsp+VPqE+YSu
 bhagS1iRN+JAjMEAAEKAB0WIQRLwNeyRHGyoYTq9dMADmhBGVaCFQUCaaXx+AAKCRAADmhBGVaC
 FTq6D/9+cdQFr3gfoFPinPiwnzlCJclUXbIuNVks9phDOV85WJ69jJ2EbHivozsQQbmdRkyHNa5
 TUgP2yv/IYHgRmdB9IhlcUV98Tm7jptcbY/uZWxP0l30ZJa1N0pS6KO1ysFl9/csaxZS8wyfQch
 hVrRb8agzOS18ArGlThXodRMsAXLwNKpLgvZfKSmQSzvro1qSkuJnih9djx+aOXE4GZ9k+kUdU3
 q0dDdAzkpWfh/LtcjpcagvVugIy5FZwtRz5rMFIBysqseSP8aw2X6vW8BG4B2fkt0QBz8ATXZ7S
 6/7w4tIYZkrN+qjRLMfuPXxPJvpUcMI++/e3fzlxvd9NnTAX//kA+N5ccg53Xa7ME3OPS2B7g4e
 WOSUnDCxwy7hDgVqrQN+BlBB+NcznaOy+bBpVokCZbMMgWDmqMEJlS3+epKHzTk7MaMofPZMtfJ
 v1ox3PQfnN18j1i+Ni/rCRfCNXb5h4JH1MZ0AV95vYXgDcpqDDo2zQmqcw5+ep+SQmAy4oYIa6V
 G8jqb52oW+re9jXeDUY8/JNt5eWrrPhEHorOpHDRP8RQ7d4GKV8AI94hQNEoIjWOwpMjR7JS726
 a2NbcXxAScH8tht6DpzXOeb6MQmuSNUKsRayQfIHbg0kLqaMRg0DnV/iAtxslJFdRcl3+5FfU2Q
 6ahGnw59kAQbUPg==
X-Developer-Key: i=jlayton@kernel.org; a=openpgp;
 fpr=4BC0D7B24471B2A184EAF5D3000E684119568215
X-Spamd-Bar: --
X-MailFrom: jlayton@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 3BAL6TJEYHI2HAKB2TNDR6WFWAK5RWWY
X-Message-ID-Hash: 3BAL6TJEYHI2HAKB2TNDR6WFWAK5RWWY
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:56:36 +0000
CC: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-perf-
 users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@vger.kernel.org, audit@vger.kernel.org, linux-bluetooth@vger.kernel.org, linux-can@vger.kernel.org, linux-sctp@vger.kernel.org, bpf@vger.kernel.org, Jeff Layton <jlayton@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 036/110] jfs: use PRIino format for i_ino
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3BAL6TJEYHI2HAKB2TNDR6WFWAK5RWWY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[1076];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[zeniv.linux.org.uk,kernel.org,suse.cz,goodmis.org,efficios.com,intel.com,infradead.org,mit.edu,linux.dev,suse.de,redhat.com,manguebit.org,dilger.ca,suse.com,oracle.com,brown.name,talpey.com,samba.org,gmail.com,microsoft.com,dubeyko.com,ionkov.net,codewreck.org,crudebyte.com,auristor.com,themaw.net,cs.cmu.edu,fluxnic.net,tyhicks.com,physik.fu-berlin.de,vivo.com,artax.karlin.mff.cuni.cz,nod.at,paragon-software.com,fasheh.com,evilplan.org,linux.alibaba.com,omnibond.com,szeredi.hu,alarsen.net,huawei.com,wdc.com,canonical.com,paul-moore.com,namei.org,hallyn.com,linux.ibm.com,schaufler-ca.com,amd.com,ffwll.ch,linaro.org,google.com,davemloft.net,arm.com,linux.intel.com,dev.tdt.de,yaina.de,holtmann.org,hartkopp.net,pengutronix.de,secunet.com,gondor.apana.org.au,fomichev.me,iogearbox.net];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.297];
	RCPT_COUNT_GT_50(0.00)[172];
	FROM_NEQ_ENVFROM(0.00)[jlayton@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 530CD4129DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Convert jfs i_ino format strings to use the PRIino format
macro in preparation for the widening of i_ino via kino_t.

Also correct signed format specifiers to unsigned, since inode
numbers are unsigned values.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 fs/jfs/inode.c        | 2 +-
 fs/jfs/jfs_imap.c     | 2 +-
 fs/jfs/jfs_metapage.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 4709762713efc5f1c6199ccfd9ecefe933e13f67..7529043baaf30a6227e5d8edbefd9e37a8105d43 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -64,7 +64,7 @@ struct inode *jfs_iget(struct super_block *sb, unsigned long ino)
 		inode->i_op = &jfs_file_inode_operations;
 		init_special_inode(inode, inode->i_mode, inode->i_rdev);
 	} else {
-		printk(KERN_DEBUG "JFS: Invalid file type 0%04o for inode %lu.\n",
+		printk(KERN_DEBUG "JFS: Invalid file type 0%04o for inode %" PRIino "u.\n",
 		       inode->i_mode, inode->i_ino);
 		iget_failed(inode);
 		return ERR_PTR(-EIO);
diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 294a67327c735fb9cbe074078ed72e872862d710..c9ea54f06114ce210ab2d80ad80d0dfa6c55b250 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -302,7 +302,7 @@ int diRead(struct inode *ip)
 	unsigned long pageno;
 	int rel_inode;
 
-	jfs_info("diRead: ino = %ld", ip->i_ino);
+	jfs_info("diRead: ino = %" PRIino "u", ip->i_ino);
 
 	ipimap = sbi->ipimap;
 	JFS_IP(ip)->ipimap = ipimap;
diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 64c6eaa7f3f264ac7c6c71ad8dd0d59b63f15414..0a1efacaf4e2196197cfe44e5c51d89b15d39545 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -692,7 +692,7 @@ struct metapage *__get_metapage(struct inode *inode, unsigned long lblock,
 	unsigned long page_index;
 	unsigned long page_offset;
 
-	jfs_info("__get_metapage: ino = %ld, lblock = 0x%lx, abs=%d",
+	jfs_info("__get_metapage: ino = %" PRIino "u, lblock = 0x%lx, abs=%d",
 		 inode->i_ino, lblock, absolute);
 
 	l2bsize = inode->i_blkbits;

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
