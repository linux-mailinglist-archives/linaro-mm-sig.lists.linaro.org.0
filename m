Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDcjKsgW4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:05:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 515094124EC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:05:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B22F457DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:05:11 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 9AAFE3F85D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 16:05:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="ZFzN5/gW";
	spf=pass (lists.linaro.org: domain of jlayton@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=jlayton@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 12B6940A73;
	Thu, 26 Feb 2026 16:05:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADAD6C116C6;
	Thu, 26 Feb 2026 16:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772121928;
	bh=6UN3al2tzYcVr4bhkYBjIiJcg7kY6ll3XiJLa1oVlfY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZFzN5/gWqI9gVceO21c3BlE3ZOAJdQoQM8i9DH0/agwltGQfJBEj2IZiSMGobNPVQ
	 qBR6afkadV23GWyE9polaKgasPkxRt9pVcNxjkkCRuv75exdLsba1i4bjFk30U4fFD
	 UX9ijQ9hwUqkVl3r/XBmRg0F7V8PSUA2ZpThgY+oEqEpq0zqD4e/ryCk4JajBRvsAv
	 lVCjmimZLSzAFRgQh9TG2Gwr5k+xiKNxvFGnRUWmrCTyM3Gc0rXm3YT9wEYE6kitvS
	 EI2JXuKLyYi2twKciyQHWfESTvgYf9be/q35EEgBc1xBLbg4ilPdK1D8vnIy3OWz0g
	 FHhaJQ7ROg3VQ==
From: Jeff Layton <jlayton@kernel.org>
Date: Thu, 26 Feb 2026 10:55:46 -0500
MIME-Version: 1.0
Message-Id: <20260226-iino-u64-v1-44-ccceff366db9@kernel.org>
References: <20260226-iino-u64-v1-0-ccceff366db9@kernel.org>
In-Reply-To: <20260226-iino-u64-v1-0-ccceff366db9@kernel.org>
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
 Martin Schiller <ms@dev.tdt.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2573; i=jlayton@kernel.org;
 h=from:subject:message-id; bh=6UN3al2tzYcVr4bhkYBjIiJcg7kY6ll3XiJLa1oVlfY=;
 b=owEBbQKS/ZANAwAKAQAOaEEZVoIVAcsmYgBpoG0PmAX6po+Me1LtXOxELbE3YbRF+E3FwKFhW
 iRe4MINX9GJAjMEAAEKAB0WIQRLwNeyRHGyoYTq9dMADmhBGVaCFQUCaaBtDwAKCRAADmhBGVaC
 FfUvD/9jNP3wjvadvWrklZqzkFB0cB/NqSi8mDICkvziy9OFAtTNtEYvzW+khlIKBucHQ54yIOM
 zY/xF5a7/YoFhl9C5394YJjBShWBN6KvHBfe8MnxqXAiRGCDX2AF9XRxZTwbl40wcxMQ837uA2X
 9StKcjWI012KgN3nMFJ4wJUCCBvHGlzZODxlnzPYuc73B8I6LzYkjL7b1Hrdol24+O7nOyUipAr
 fFldocux2lUhdNtFG7o51ByNpYPvZR9ikm4Eq+M7CUk7NFbHViPsh0ZazAsodIfS4KWawW3EuCh
 BbPcItOXDx4PD/GtKrZchiaeBTGQs56DFgH27H2I1skP7wG7/tU4qWkZOYGp1ynUj8nWjdM5jzJ
 lz8WUSw4nXKgGxltV/z//r1obNY8QYL6RMPvILX5WCmvazbWL3p7fENvjKNzlbOI8RWZQkgUrt+
 09RTMnokkTxKg+zs77OKTRBHDu8x58IdE3xaecJG5TmrObPp1lXiMnCpU5baPwXt/FHuI+x+La1
 eH5/LL/aIOL1lk1vt3yWAnQrzMgtRXV5VlqxeT4lS5U0iaQEDcWRikUd5yoBXNOM+8loEjduUTw
 7eoLOS0VNr9gAabi/VS2wquojz/TBJKG0K054mFYwl5ABhYOoge/H7vCbLV87Kq5cRYyVIoYdM0
 DEiwZhMl+TVsm4g==
X-Developer-Key: i=jlayton@kernel.org; a=openpgp;
 fpr=4BC0D7B24471B2A184EAF5D3000E684119568215
X-Spamd-Bar: --
X-MailFrom: jlayton@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AUX7DE47UGSDLOI7HRED7EZQX3OMTWBV
X-Message-ID-Hash: AUX7DE47UGSDLOI7HRED7EZQX3OMTWBV
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:47:51 +0000
CC: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-perf-
 users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@vger.kernel.org, Jeff Layton <jlayton@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 44/61] overlayfs: update format strings for u64 i_ino
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AUX7DE47UGSDLOI7HRED7EZQX3OMTWBV/>
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
	DATE_IN_PAST(1.00)[1177];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[zeniv.linux.org.uk,kernel.org,suse.cz,goodmis.org,efficios.com,intel.com,infradead.org,mit.edu,linux.dev,suse.de,redhat.com,manguebit.org,dilger.ca,suse.com,oracle.com,brown.name,talpey.com,samba.org,gmail.com,microsoft.com,dubeyko.com,ionkov.net,codewreck.org,crudebyte.com,auristor.com,themaw.net,cs.cmu.edu,fluxnic.net,tyhicks.com,physik.fu-berlin.de,vivo.com,artax.karlin.mff.cuni.cz,nod.at,paragon-software.com,fasheh.com,evilplan.org,linux.alibaba.com,omnibond.com,szeredi.hu,alarsen.net,huawei.com,wdc.com,canonical.com,paul-moore.com,namei.org,hallyn.com,linux.ibm.com,schaufler-ca.com,amd.com,ffwll.ch,linaro.org,google.com,davemloft.net,arm.com,linux.intel.com,dev.tdt.de];
	ARC_NA(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.259];
	RCPT_COUNT_GT_50(0.00)[146];
	FROM_NEQ_ENVFROM(0.00)[jlayton@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 515094124EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Update format strings and local variable types in overlayfs for the
i_ino type change from unsigned long to u64.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 fs/overlayfs/export.c | 2 +-
 fs/overlayfs/namei.c  | 4 ++--
 fs/overlayfs/util.c   | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/overlayfs/export.c b/fs/overlayfs/export.c
index 83f80fdb156749e65a4ea0ab708cbff338dacdad..0a35d1a20f13fbab5bbee5f271d41f52334a9a6a 100644
--- a/fs/overlayfs/export.c
+++ b/fs/overlayfs/export.c
@@ -262,7 +262,7 @@ static int ovl_dentry_to_fid(struct ovl_fs *ofs, struct inode *inode,
 	return err;
 
 fail:
-	pr_warn_ratelimited("failed to encode file handle (ino=%lu, err=%i)\n",
+	pr_warn_ratelimited("failed to encode file handle (ino=%llu, err=%i)\n",
 			    inode->i_ino, err);
 	goto out;
 }
diff --git a/fs/overlayfs/namei.c b/fs/overlayfs/namei.c
index d8dd4b0529843bc20e4efc1924c2be3b5712b343..ca899fdfaafd21f4bb31807e73883b4978116732 100644
--- a/fs/overlayfs/namei.c
+++ b/fs/overlayfs/namei.c
@@ -591,7 +591,7 @@ int ovl_verify_origin_xattr(struct ovl_fs *ofs, struct dentry *dentry,
 
 fail:
 	inode = d_inode(real);
-	pr_warn_ratelimited("failed to verify %s (%pd2, ino=%lu, err=%i)\n",
+	pr_warn_ratelimited("failed to verify %s (%pd2, ino=%llu, err=%i)\n",
 			    is_upper ? "upper" : "origin", real,
 			    inode ? inode->i_ino : 0, err);
 	goto out;
@@ -831,7 +831,7 @@ struct dentry *ovl_lookup_index(struct ovl_fs *ofs, struct dentry *upper,
 			index = NULL;
 			goto out;
 		}
-		pr_warn_ratelimited("failed inode index lookup (ino=%lu, key=%.*s, err=%i);\n"
+		pr_warn_ratelimited("failed inode index lookup (ino=%llu, key=%.*s, err=%i);\n"
 				    "overlayfs: mount with '-o index=off' to disable inodes index.\n",
 				    d_inode(origin)->i_ino, name.len, name.name,
 				    err);
diff --git a/fs/overlayfs/util.c b/fs/overlayfs/util.c
index 3f1b763a8bb4cb842e5d5cebffbee6b8dbe01de9..2edad9a146486bda5edf47dc60e1645d49af6539 100644
--- a/fs/overlayfs/util.c
+++ b/fs/overlayfs/util.c
@@ -1092,7 +1092,7 @@ static void ovl_cleanup_index(struct dentry *dentry)
 	got_write = true;
 	inode = d_inode(upperdentry);
 	if (!S_ISDIR(inode->i_mode) && inode->i_nlink != 1) {
-		pr_warn_ratelimited("cleanup linked index (%pd2, ino=%lu, nlink=%u)\n",
+		pr_warn_ratelimited("cleanup linked index (%pd2, ino=%llu, nlink=%u)\n",
 				    upperdentry, inode->i_ino, inode->i_nlink);
 		/*
 		 * We either have a bug with persistent union nlink or a lower

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
