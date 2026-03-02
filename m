Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Ct+DxAa4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:19:12 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E19A6412888
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:19:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F3DBE406EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:19:10 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id EB1064016D
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 20:25:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=WUgJCdF5;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of jlayton@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=jlayton@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4B49F436EC;
	Mon,  2 Mar 2026 20:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 043D8C2BC87;
	Mon,  2 Mar 2026 20:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772483115;
	bh=a/GWSK0b9QXvtWMAeqXB3u+MddZFQoYzg2G9mjzwaQE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=WUgJCdF5t+Q1hK98cJHCI3yR4RRoaShPYoOuDVqA7bN0VVkGDmdd+xm+7ktLcUk01
	 EGdiF3IXRPe/50XIN/hcE50LLQL5RkjKg0n2DlG1WQL9loLiI5A5a/gZ9UIV4bsZTc
	 CmW8JtCoNZPuZPMgbWlhxWemup/Rm8sUzlLv5FQ+LBGmQz5a0Vrt4SK71foF1X9nWM
	 tEYcSb9RsFzTsrGm8Jcfaic19f8MaHL69up0/JoRawoxpouAHK7TmPnhvW74EAmIcJ
	 8MXLzhZlvizURsAInXf0jL+7Fn0tgIPFDwmr8aFk/Ljlg1e++4RbexATuMW3x9CnKj
	 2PBS37WBUhsTQ==
From: Jeff Layton <jlayton@kernel.org>
Date: Mon, 02 Mar 2026 15:23:45 -0500
MIME-Version: 1.0
Message-Id: <20260302-iino-u64-v2-1-e5388800dae0@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1721; i=jlayton@kernel.org;
 h=from:subject:message-id; bh=a/GWSK0b9QXvtWMAeqXB3u+MddZFQoYzg2G9mjzwaQE=;
 b=owEBbQKS/ZANAwAKAQAOaEEZVoIVAcsmYgBppfHvSSPODOGv+IDeLjtFG7YpO1D5z3aKetMMJ
 fVghWz/+YeJAjMEAAEKAB0WIQRLwNeyRHGyoYTq9dMADmhBGVaCFQUCaaXx7wAKCRAADmhBGVaC
 FbwmD/9p2V49BAW6bIXPo2PewhpDsNQPKpX1wZUIsvxqGpZ6OoPwCdTPl5JCdJpBZmDUV7xAAet
 GlbT9i4wB/NFkKQ4KrOGznjzpC7tpffCcO2sYntinXsiW8KC/5wjT+XwLP9beoYik1TS7LEA2D+
 vfj6urKts/Z2WhB8n+dPuEeFdMe26J7GcxDgZXJJaxtbQFIK2Kx9kxNE6YqgzGsCiCR6SUqooDa
 Z5h8Xj6w9sbvUV4NVm3Geb9YZn1s1u0TuJmIReIOZakp9qXk5bjhxeKsvbm9LcG1LZtvYnwny0I
 9HCRSTm5S904N17xb4gq9ptERLW/oJODRgpI84H15dAXxJQ0OMXmVMcldx6KF2V3cfXmEyJADQX
 HivLqyZD1/kytrFqvn32XWRqpdxCzgUFEEcKv2bUPnerzqbTT4N+3jZhRHyPowqPc14BLN5BZ8A
 0nvAFTFwK51nt5JY4VwpS253elwJVd8n8K5ZGEXB+K6KeLl08JL7UK59u7/W46KRFbFJfP7ggtE
 xR+Z1fmcG2iKvEAeQ+FN4loRB8iPdg6XUfBeTjfL/XUa3xEexjDxV7bZzoYVCZCSFttt0n84DwN
 dTfnY8nwZyuQDq6o+DlqztqDyUiCLpF4wd74VvQk92opgYHwEbXw0SmGlbxwF3ccsa/VT4qmkiD
 0g11lTFvRYNLbBQ==
X-Developer-Key: i=jlayton@kernel.org; a=openpgp;
 fpr=4BC0D7B24471B2A184EAF5D3000E684119568215
X-Spamd-Bar: -
X-MailFrom: jlayton@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 5G4V542UEBDRHDZJKLQD5HKKBRXMJHN6
X-Message-ID-Hash: 5G4V542UEBDRHDZJKLQD5HKKBRXMJHN6
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:25 +0000
CC: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-perf-
 users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@vger.kernel.org, audit@vger.kernel.org, linux-bluetooth@vger.kernel.org, linux-can@vger.kernel.org, linux-sctp@vger.kernel.org, bpf@vger.kernel.org, Jeff Layton <jlayton@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 001/110] vfs: introduce kino_t typedef and PRIino format macro
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5G4V542UEBDRHDZJKLQD5HKKBRXMJHN6/>
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
	NEURAL_HAM(-0.00)[-0.200];
	RCPT_COUNT_GT_50(0.00)[172];
	FROM_NEQ_ENVFROM(0.00)[jlayton@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: E19A6412888
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Introduce a kino_t typedef and PRIino format macro to enable a
bisect-clean transition of i_ino from unsigned long to u64.

kino_t is initially defined as unsigned long (matching the original
i_ino type), and PRIino is "l" (the format length modifier for
unsigned long). A later patch will change these to u64 and "ll"
respectively once all format strings have been updated to use PRIino.

The PRIino macro is a length modifier, not a complete format specifier.
It is used as: "%" PRIino "u" for decimal, "%" PRIino "x" for hex, etc.
This follows the pattern used by userspace PRIu64/PRIx64 macros.

Format strings using i_ino should be updated to use PRIino instead of
a hard-coded length modifier to ensure warning-free compilation on
both 32-bit and 64-bit architectures throughout the transition.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
---
 include/linux/fs.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/linux/fs.h b/include/linux/fs.h
index 8b3dd145b25ec12b00ac1df17a952d9116b88047..e38bc5ece1f360d679a8f30b8171292f7a65c218 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -758,6 +758,9 @@ struct inode_state_flags {
 	enum inode_state_flags_enum __state;
 };
 
+typedef unsigned long	kino_t;
+#define PRIino		"l"
+
 /*
  * Keep mostly read-only and often accessed (especially for
  * the RCU path lookup and 'stat' data) fields at the beginning
@@ -783,7 +786,7 @@ struct inode {
 #endif
 
 	/* Stat data, not accessed from path walking */
-	unsigned long		i_ino;
+	kino_t			i_ino;
 	/*
 	 * Filesystems may only read i_nlink directly.  They shall use the
 	 * following functions for modification:

-- 
2.53.0

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
