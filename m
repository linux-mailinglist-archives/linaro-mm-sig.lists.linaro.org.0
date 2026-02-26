Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJOkFIgY4WmmpAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:12:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D734126C1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:12:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E114F4544A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:12:38 +0000 (UTC)
Received: from lithops.sigma-star.at (mailout.nod.at [116.203.167.152])
	by lists.linaro.org (Postfix) with ESMTPS id 4A4673F81B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 21:06:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	dmarc=none;
	spf=pass (lists.linaro.org: domain of richard@nod.at designates 116.203.167.152 as permitted sender) smtp.mailfrom=richard@nod.at
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 8F3C528F9E9;
	Thu, 26 Feb 2026 22:06:12 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id iWyiIX5CRUJd; Thu, 26 Feb 2026 22:06:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by lithops.sigma-star.at (Postfix) with ESMTP id 9FBFB29859D;
	Thu, 26 Feb 2026 22:06:10 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
	by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id cwbgIi8mwQ6r; Thu, 26 Feb 2026 22:06:09 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
	by lithops.sigma-star.at (Postfix) with ESMTP id 1868E298580;
	Thu, 26 Feb 2026 22:06:08 +0100 (CET)
Date: Thu, 26 Feb 2026 22:06:07 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <909001762.1963.1772139967060.JavaMail.zimbra@nod.at>
In-Reply-To: <20260226-iino-u64-v1-47-ccceff366db9@kernel.org>
References: <20260226-iino-u64-v1-0-ccceff366db9@kernel.org> <20260226-iino-u64-v1-47-ccceff366db9@kernel.org>
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF147 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubifs: update format strings for u64 i_ino
Thread-Index: W1YwJFGUiVxHsVs+FtVDAklXBDhaRQ==
X-Spamd-Bar: -
X-MailFrom: richard@nod.at
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: ZIPRA6JO44GASN2WAUPVI2NFZD45AWOX
X-Message-ID-Hash: ZIPRA6JO44GASN2WAUPVI2NFZD45AWOX
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:51:01 +0000
CC: Al Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Steven Rostedt <rostedt@goodmis.org>, mhiramat <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, dan j williams <dan.j.williams@intel.com>, Matthew Wilcox <willy@infradead.org>, Eric Biggers <ebiggers@kernel.org>, tytso <tytso@mit.edu>, Muchun Song <muchun.song@linux.dev>, Oscar Salvador <osalvador@suse.de>, David Hildenbrand <david@kernel.org>, David Howells <dhowells@redhat.com>, Paulo Alcantara <pc@manguebit.org>, Andreas Dilger <adilger.kernel@dilger.ca>, Jan Kara <jack@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>, Trond Myklebust <trondmy@kernel.org>, anna <anna@kernel.org>, chuck lever <chuck.lever@oracle.com>, NeilBrown <neil@brown.name>, Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo <Dai.Ngo@oracle.com>, Tom Talpey <tom@talpey.com>, Steve French <sfrench@samba.org>, Ronnie Sahlberg <ronniesahlberg@gmail.com>, Shyam <spra
 sad@microsoft.com>, Bharath SM <bharathsm@microsoft.com>, Alexander Aring <alex.aring@gmail.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>, Viacheslav Dubeyko <slava@dubeyko.com>, Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>, Christian Schoenebeck <linux_oss@crudebyte.com>, David Sterba <dsterba@suse.com>, Marc Dionne <marc.dionne@auristor.com>, raven <raven@themaw.net>, Luis de Bethencourt <luisbg@kernel.org>, Salah Triki <salah.triki@gmail.com>, "Tigran A. Aivazian" <aivazian.tigran@gmail.com>, Ilya Dryomov <idryomov@gmail.com>, Alex Markuze <amarkuze@redhat.com>, Jan Harkes <jaharkes@cs.cmu.edu>, coda@cs.cmu.edu, Nicolas Pitre <nico@fluxnic.net>, Tyler Hicks <code@tyhicks.com>, Amir Goldstein <amir73il@gmail.com>, Christoph Hellwig <hch@infradead.org>, John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Yangtao Li <frank.li@vivo.com>, Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>, David Woo
 dhouse <dwmw2@infradead.org>, Dave Kleikamp <shaggy@kernel.org>, Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Mike Marshall <hubcap@omnibond.com>, Martin Brandenburg <martin@omnibond.com>, Miklos Szeredi <miklos@szeredi.hu>, Anders Larsen <al@alarsen.net>, chengzhihao1 <chengzhihao1@huawei.com>, Damien Le Moal <dlemoal@kernel.org>, Naohiro Aota <naohiro.aota@wdc.com>, Johannes Thumshirn <jth@kernel.org>, John Johansen <john.johansen@canonical.com>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Mimi Zohar <zohar@linux.ibm.com>, Roberto Sassu <roberto.sassu@huawei.com>, Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, Eric Snowberg <eric.snowberg@oracle.com>, Fan Wu <wufan@kernel.org>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Casey Schaufler <casey@schaufler-ca
 .com>, Alex Deucher <alexander.deucher@amd.com>, Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, sumit semwal <sumit.semwal@linaro.org>, edumazet <edumazet@google.com>, Kuniyuki Iwashima <kuniyu@google.com>, pabeni <pabeni@redhat.com>, Willem de Bruijn <willemb@google.com>, davem <davem@davemloft.net>, kuba <kuba@kernel.org>, Simon Horman <horms@kernel.org>, oleg <oleg@redhat.com>, Peter Zijlstra <peterz@infradead.org>, mingo <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, James Clark <james.clark@linaro.org>, "Darrick J. Wong" <djwong@kernel.org>, Martin Schiller <ms@dev.tdt.de>, linux-fsdevel <linux-fsdevel@vger.kernel.org>, linux-kernel <linux-kernel@vger.
 kernel.org>, linux-trace-kernel <linux-trace-kernel@vger.kernel.org>, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm <linux-mm@kvack.org>, netfs@lists.linux.dev, linux-ext4 <linux-ext4@vger.kernel.org>, linux-f2fs-devel <linux-f2fs-devel@lists.sourceforge.net>, linux-nfs <linux-nfs@vger.kernel.org>, linux-cifs <linux-cifs@vger.kernel.org>, samba-technical <samba-technical@lists.samba.org>, linux-nilfs <linux-nilfs@vger.kernel.org>, v9fs <v9fs@lists.linux.dev>, linux-afs <linux-afs@lists.infradead.org>, autofs@vger.kernel.org, ceph-devel <ceph-devel@vger.kernel.org>, codalist@coda.cs.cmu.edu, ecryptfs <ecryptfs@vger.kernel.org>, linux-mtd <linux-mtd@lists.infradead.org>, jfs-discussion <jfs-discussion@lists.sourceforge.net>, ntfs3 <ntfs3@lists.linux.dev>, ocfs2-devel <ocfs2-devel@lists.linux.dev>, devel <devel@lists.orangefs.org>, linux-unionfs <linux-unionfs@vger.kernel.org>, apparmor@lists.ubuntu.com, LSM <linux-security-module@vger.kernel.org>, linux-integrity <linux-i
 ntegrity@vger.kernel.org>, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, DRI mailing list <dri-devel@lists.freedesktop.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev <netdev@vger.kernel.org>, linux-perf-users@vger.kernel.org, linux-fscrypt <linux-fscrypt@vger.kernel.org>, linux-xfs <linux-xfs@vger.kernel.org>, linux-hams@vger.kernel.org, linux-x25@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 47/61] ubifs: update format strings for u64 i_ino
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZIPRA6JO44GASN2WAUPVI2NFZD45AWOX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[1172];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[nod.at];
	ARC_NA(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,kernel.org,suse.cz,goodmis.org,efficios.com,intel.com,infradead.org,mit.edu,linux.dev,suse.de,redhat.com,manguebit.org,dilger.ca,suse.com,oracle.com,brown.name,talpey.com,samba.org,gmail.com,microsoft.com,dubeyko.com,ionkov.net,codewreck.org,crudebyte.com,auristor.com,themaw.net,cs.cmu.edu,fluxnic.net,tyhicks.com,physik.fu-berlin.de,vivo.com,artax.karlin.mff.cuni.cz,paragon-software.com,fasheh.com,evilplan.org,linux.alibaba.com,omnibond.com,szeredi.hu,alarsen.net,huawei.com,wdc.com,canonical.com,paul-moore.com,namei.org,hallyn.com,linux.ibm.com,schaufler-ca .com,amd.com,ffwll.ch,linaro.org,google.com,davemloft.net,arm.com,linux.intel.com,dev.tdt.de,vger.kernel.org,vger. kernel.org,lists.linux.dev,kvack.org,lists.sourceforge.net,lists.samba.org,lists.infradead.org,coda.cs.cmu.edu,lists.orangefs.org,lists.ubuntu.com,lists.freedesktop.org,lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_GT_50(0.00)[145];
	FROM_NEQ_ENVFROM(0.00)[richard@nod.at,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D2D734126C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQ0KPiBWb246ICJKZWZmIExheXRvbiIgPGps
YXl0b25Aa2VybmVsLm9yZz4NCj4gVXBkYXRlIGZvcm1hdCBzdHJpbmdzIGFuZCBsb2NhbCB2YXJp
YWJsZSB0eXBlcyBpbiB1YmlmcyBmb3IgdGhlDQo+IGlfaW5vIHR5cGUgY2hhbmdlIGZyb20gdW5z
aWduZWQgbG9uZyB0byB1NjQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKZWZmIExheXRvbiA8amxh
eXRvbkBrZXJuZWwub3JnPg0KPiAtLS0NCj4gZnMvdWJpZnMvZGVidWcuYyAgIHwgIDggKysrKy0t
LS0NCj4gZnMvdWJpZnMvZGlyLmMgICAgIHwgMjggKysrKysrKysrKysrKystLS0tLS0tLS0tLS0t
LQ0KPiBmcy91Ymlmcy9maWxlLmMgICAgfCAyOCArKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0t
DQo+IGZzL3ViaWZzL2pvdXJuYWwuYyB8ICA2ICsrKy0tLQ0KPiBmcy91Ymlmcy9zdXBlci5jICAg
fCAxNiArKysrKysrKy0tLS0tLS0tDQo+IGZzL3ViaWZzL3RuYy5jICAgICB8ICA0ICsrLS0NCj4g
ZnMvdWJpZnMveGF0dHIuYyAgIHwgMTQgKysrKysrKy0tLS0tLS0NCj4gNyBmaWxlcyBjaGFuZ2Vk
LCA1MiBpbnNlcnRpb25zKCspLCA1MiBkZWxldGlvbnMoLSkNCg0KQWNrZWQtYnk6IFJpY2hhcmQg
V2VpbmJlcmdlciA8cmljaGFyZEBub2QuYXQ+DQoNClRoYW5rcywNCi8vcmljaGFyZA0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
