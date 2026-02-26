Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKZdFRMX4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:06:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DC9412541
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:06:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3BD2A406B0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:06:26 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 891983F807
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 16:07:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=JK5x+DGZ;
	spf=pass (lists.linaro.org: domain of jlayton@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=jlayton@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F1CB041B34;
	Thu, 26 Feb 2026 16:07:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DB8CC19423;
	Thu, 26 Feb 2026 16:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772122053;
	bh=g3n1nCxYMXEXDsu2ySJk4rG4mNa4qrBoj39gl+KTRp8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JK5x+DGZZZUuI0edwhDsoOLVacQSr2/2YCXlaFfdQqIunLA1rkj5wQ9VamvSO3bCA
	 A5nWTz3DvoXB5ol7feKJES0oIZcWbjYxY4HE/9ngdNeySq7KWFTfmCF5VsALncqJTm
	 aFulpOAiFtNLP68xa4SaFWpTjyOtA7E3xPHi08mdDQfxDUfAVmHBfIsRrP4fTKI2OP
	 /IjobM+teyuaj6/j3CVBQvJaTbr8dqEm9vVNEVt+zOpTOoD6yX+lBPZsXS0fG50YVd
	 UE40mkB0rrqxWqWmutULB0BzzxTD4xqLxmhEY4ebRz8xEj+XODgaa1cGYt6lx4MDP3
	 g01ujiPYpLTCw==
From: Jeff Layton <jlayton@kernel.org>
Date: Thu, 26 Feb 2026 10:55:56 -0500
MIME-Version: 1.0
Message-Id: <20260226-iino-u64-v1-54-ccceff366db9@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=716; i=jlayton@kernel.org;
 h=from:subject:message-id; bh=g3n1nCxYMXEXDsu2ySJk4rG4mNa4qrBoj39gl+KTRp8=;
 b=owEBbQKS/ZANAwAKAQAOaEEZVoIVAcsmYgBpoG0R0ftkUVIgNWqRLpd6PjX/F6VzDmk1dabAF
 WFJS0/tvhyJAjMEAAEKAB0WIQRLwNeyRHGyoYTq9dMADmhBGVaCFQUCaaBtEQAKCRAADmhBGVaC
 FbWzD/0YwIWbFt/wgPSYpzAoZ+dvSXhYUNv1qSOgWuZe/51x7ywGmtwlS+4pzvJVeUBrlxRp7yP
 UUIL4k3r2vgnjv5AbwRjtmB5HXfWlJ8gvx0bL9FPlxPP3sa/Q4JdlMIzJQDBxPQTPLv4WiOkUGI
 r+q0zTk77AVk/IELx074i7//bQBt+CGIiGRrD75P/ybl/IpF9ChoNKDKQhUB3g44T79ggU1A+VR
 eEP9NRAmIT9zaHIi0ZxuPtEERuECX+IosPUx85+UjTw7T2RvpPBwQTZAQKMyQWRaL/BVRzqzc63
 hGptdBZnmMgfDRh9zcCtZloAPd0wXeKNQh65r+MkW9yV+6cyzZypkA53Au9S+h1YFxWRv4q7P+p
 5Zd6+fG1C1PVFaNu5I1e91bs6LjWWhkE1D+I+PDj54RnPpzl4jGHfRLcIWlCGqO/FaHY/lTcfhv
 ioQXIQKh+cMjH/Gbq/OI01UMmaM0g4DsroUqoDPwKwevT1tUD8lSgbKv0mC08VZaMqEE7XNeOzI
 3lWP97M3d25pq/AJz98IKhSCNg6GcDc2v95IhToNIzeiW2tLT7qcWSUg9Xvm2jjTNsyltIi5egT
 itiO0drEKuORLrzOiZKvkEM0f0A1llbTYHIjitVM3x+tT5ARx5ZXL6QBynHiCaiRNETRgJuk3ar
 6/G5xOXPzR5hAjw==
X-Developer-Key: i=jlayton@kernel.org; a=openpgp;
 fpr=4BC0D7B24471B2A184EAF5D3000E684119568215
X-Spamd-Bar: --
X-MailFrom: jlayton@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 2Y4B4DDAYJLCK7BXCBA2QJNB4QYFBBFW
X-Message-ID-Hash: 2Y4B4DDAYJLCK7BXCBA2QJNB4QYFBBFW
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:47:56 +0000
CC: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-perf-
 users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@vger.kernel.org, Jeff Layton <jlayton@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH 54/61] net: update socket dname format for u64 i_ino
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2Y4B4DDAYJLCK7BXCBA2QJNB4QYFBBFW/>
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	NEURAL_HAM(-0.00)[-0.354];
	RCPT_COUNT_GT_50(0.00)[146];
	FROM_NEQ_ENVFROM(0.00)[jlayton@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 21DC9412541
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Update %lu to %llu in sockfs_dname() for printing i_ino, since i_ino
is now u64.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 net/socket.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/socket.c b/net/socket.c
index 7aa94fce7a8b3d6beec7594e311e73fb52f371cc..3f4d2a867aa15b2d2aec1c9dfa004bca94f6d5de 100644
--- a/net/socket.c
+++ b/net/socket.c
@@ -399,7 +399,7 @@ static const struct super_operations sockfs_ops = {
  */
 static char *sockfs_dname(struct dentry *dentry, char *buffer, int buflen)
 {
-	return dynamic_dname(buffer, buflen, "socket:[%lu]",
+	return dynamic_dname(buffer, buflen, "socket:[%llu]",
 				d_inode(dentry)->i_ino);
 }
 

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
