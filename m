Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MN5OOawV4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:00:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9C941238F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:00:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 793104097D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:00:27 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 796D83F824
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 15:58:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GmrdppOH;
	spf=pass (lists.linaro.org: domain of jlayton@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=jlayton@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E1C5240E31;
	Thu, 26 Feb 2026 15:58:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A1D7C116C6;
	Thu, 26 Feb 2026 15:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772121515;
	bh=YA3Mtm5mPmkVjL6hFtey9KMWh3gSaYq2MagoP4LN3/A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GmrdppOHVxTK6LjwPJUDCRCr56MTlrDltKbBC7kjaIBy7u7PeoWA2d5cbdi8vYlRo
	 VHH6W1mETt+muiHQyBLKRS1eZbP/x+JD6/mcHLZuSB8JM4wlewRNxTu/nz8RTZ9yXJ
	 OlrwKNA8ElMmnLoZXapQor9EiTxscN/HV2SjnSL+OmKYSyHZCtpJAm0sP/MTOBXdfE
	 gbU9CW1TQFNiUrpBDEaUSBy040cvPOdWtoayIKmOghN2yBTZB/HVVZxNYX1eHVaeAY
	 jn4G/B3doACFrs0XhKmGU+BQSamXDsqOL1QBEcsX8vnDPTCT4BiLmZrP1qK3iI48Ip
	 K8p7OmEZiI0Xg==
From: Jeff Layton <jlayton@kernel.org>
Date: Thu, 26 Feb 2026 10:55:13 -0500
MIME-Version: 1.0
Message-Id: <20260226-iino-u64-v1-11-ccceff366db9@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1279; i=jlayton@kernel.org;
 h=from:subject:message-id; bh=YA3Mtm5mPmkVjL6hFtey9KMWh3gSaYq2MagoP4LN3/A=;
 b=owEBbQKS/ZANAwAKAQAOaEEZVoIVAcsmYgBpoG0Gs4nMQ7L6lsVYVbz9tP+3htrQ7f3vsiUCO
 jWU1x0BBJeJAjMEAAEKAB0WIQRLwNeyRHGyoYTq9dMADmhBGVaCFQUCaaBtBgAKCRAADmhBGVaC
 FXJ0D/4idsXZVMw5wmoMDDtM6AOQkegw7aKpmJucAxThq9u28V0k5Lv/tKuxcDyaWp0Qk98pcC1
 THlFYaoMkc7byE0+Hmcgkxdo4IjLCDtLHlxmvrOiLmHSJ9UZto07rvtQGD04R4aWGxQ8/7/zFUv
 hWrQSVnKGkxCPRx6Yvr/mE4SJtsKsq4qoEsz3uFUqYkCPHEPZ0rSLvS5NUSTn1T2J4NlrLbX8ak
 1ja3HKzV6IfA6E/G8N8UoRcGMgU0YfRykto3QM87/x3SZ7azd0hInC6OippwGXjP8o2hVEhCNle
 YQYOI1St4BAmtt9kX7Bmsl/DANMUbS/+UgPJ5ku38ohJLC7JBwo9DN60feaXlcIvK88km2kzqYW
 CuXGRMXz9e+SOjoxR7PNYr1cgU3XVjDyya4Kkc8AG2Rze32VPYSO3BMa4zPE0eRWWjIZt3m9UNx
 dKQtLQ4NuBOhba+BvvkX0SHwDZ7+z11cDz7yZDaaekU48wtWD4neVYf4Jsr+agoF6HRJgZ1+eht
 sTxSLr20OypdDn/AOhDecQymubNDOQ8GANzIZrnciGCoC5AMCUpzbuB2GKKeP86s9hupVnHOM8S
 4+EiSz/H3rEasjtRAfLXqUMKHjs1F0BtsyDNUr4UT/WQdlwLXpLyvqHTEcp9U3ja60cqNUEWkhj
 xA71KUF6JLqqfLg==
X-Developer-Key: i=jlayton@kernel.org; a=openpgp;
 fpr=4BC0D7B24471B2A184EAF5D3000E684119568215
X-Spamd-Bar: --
X-MailFrom: jlayton@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WLZMZXRLVWZOQKKCH4DAWSIH4HWYZ7NI
X-Message-ID-Hash: WLZMZXRLVWZOQKKCH4DAWSIH4HWYZ7NI
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:47:35 +0000
CC: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-perf-
 users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@vger.kernel.org, Jeff Layton <jlayton@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 11/61] nfs: remove enable_ino64 module parameter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WLZMZXRLVWZOQKKCH4DAWSIH4HWYZ7NI/>
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
	NEURAL_HAM(-0.00)[-0.467];
	RCPT_COUNT_GT_50(0.00)[146];
	FROM_NEQ_ENVFROM(0.00)[jlayton@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,swb.de:email]
X-Rspamd-Queue-Id: 6D9C941238F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The enable_ino64 module parameter controlled whether NFS presented
64-bit or XOR-folded 32-bit inode numbers to userspace. With i_ino now
being u64 and the compat folding function removed, this parameter has
no remaining consumers.

Remove the parameter, the NFS_64_BIT_INODE_NUMBERS_ENABLED macro, and
the enable_ino64 variable.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 fs/nfs/inode.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/fs/nfs/inode.c b/fs/nfs/inode.c
index 1a7d7bafbb623ab603b8c517628343463277e096..8743f3bd96a7b5915ae892abe731f159a7055d40 100644
--- a/fs/nfs/inode.c
+++ b/fs/nfs/inode.c
@@ -57,11 +57,6 @@
 
 #define NFSDBG_FACILITY		NFSDBG_VFS
 
-#define NFS_64_BIT_INODE_NUMBERS_ENABLED	1
-
-/* Default is to see 64-bit inode numbers */
-static bool enable_ino64 = NFS_64_BIT_INODE_NUMBERS_ENABLED;
-
 static int nfs_update_inode(struct inode *, struct nfs_fattr *);
 
 static struct kmem_cache * nfs_inode_cachep;
@@ -2770,7 +2765,6 @@ static void __exit exit_nfs_fs(void)
 MODULE_AUTHOR("Olaf Kirch <okir@monad.swb.de>");
 MODULE_DESCRIPTION("NFS client support");
 MODULE_LICENSE("GPL");
-module_param(enable_ino64, bool, 0644);
 
 module_init(init_nfs_fs)
 module_exit(exit_nfs_fs)

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
