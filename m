Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHDFCC8e4WlbpQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:36:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BE9412DE0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:36:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CC8BA459B4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:45 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 997353F727
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 10:49:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=fail ("headers rsa verify failed") header.d=redhat.com header.s=mimecast20190719 header.b=b+EILDad;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772534954;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lQfcYf0nTgw81P/IsIDOOQjFjTNPUrLYna+XMlLw958=;
	b=b+EILDadg+E3ad+7Z7CLYeB0/R3W/4G0Mpi7GInCCFto+RD226hob2i/1QFL+A1ISZnEjg
	ZWkJY/sjiUcX0ozWxuZNjm23zc2lucpDcO2kWNR7RJeOrZimQ6iVlTkff+UCBRlWeH7iHw
	MTiHKwV1rBy0EXt4LT6V/XrOfaglrg4=
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-452-0G4Chi9APz6r17gOWHLpdw-1; Tue,
 03 Mar 2026 05:49:09 -0500
X-MC-Unique: 0G4Chi9APz6r17gOWHLpdw-1
X-Mimecast-MFC-AGG-ID: 0G4Chi9APz6r17gOWHLpdw_1772534944
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 529D919560B0;
	Tue,  3 Mar 2026 10:49:02 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.44.33.249])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 1F8F319560A7;
	Tue,  3 Mar 2026 10:48:06 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org>
References: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org>
To: Jeff Layton <jlayton@kernel.org>
To: Alexander Viro <viro@zeniv.linux.org.uk>,
    Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
    Steven Rostedt <rostedt@goodmis.org>,
    Masami Hiramatsu <mhiramat@kernel.org>,
    Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
    Dan Williams <dan.j.williams@intel.com>,
    Matthew Wilcox <willy@infradead.org>,
    Eric Biggers <ebiggers@kernel.org>,
    "Theodore Y. Ts'o" <tytso@mit.edu>,
    Muchun Song <muchun.song@linux.dev>,
    Oscar Salvador <osalvador@suse.de>,
    David Hildenbrand <david@kernel.org>,
    David Howells <dhowells@redhat.com>,
    Paulo Alcantara <pc@manguebit.org>,
    Andreas Dilger <adilger.kernel@dilger.ca>, Jan Kara <jack@suse.com>,
    Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>,
    Trond Myklebust <trondmy@kernel.org>,
    Anna Schumaker <anna@kernel.org>,
    Chuck Lever <chuck.lever@oracle.com>, NeilBrown <neil@brown.name>,
    Olga Kornievskaia <okorniev@redhat.com>,
    Dai Ngo <Dai.Ngo@oracle.com>, Tom Talpey <tom@talpey.com>,
    Steve French <sfrench@samba.org>,
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
    David Sterba <dsterba@suse.com>,
    Marc Dionne <marc.dionne@auristor.com>, Ian Kent <raven@themaw.net>,
    Luis de Bethencourt <luisbg@kernel.org>,
    Salah Triki <salah.triki@gmail.com>,
    "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
    Ilya Dryomov <idryomov@gmail.com>,
    Alex Markuze <amarkuze@redhat.com>, Jan Harkes <jaharkes@cs.cmu.edu>,
    coda@cs.cmu.edu, Nicolas Pitre <nico@fluxnic.net>,
    Tyler Hicks <code@tyhicks.com>, Amir Goldstein <amir73il@gmail.com>,
    Christoph Hellwig <hch@infradead.org>,
    John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
    Yangtao Li <frank.li@vivo.com>,
    Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
    David Woodhouse <dwmw2@infradead.org>,
    Richard Weinberger <richard@nod.at>,
    Dave Kleikamp <shaggy@kernel.org>,
    Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
    Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>,
    Joseph Qi <joseph.qi@linux.alibaba.com>,
    Mike Marshall <hubcap@omnibond.com>,
    Martin Brandenburg <martin@omnibond.com>,
    Miklos Szeredi <miklos@szeredi.hu>, Anders Larsen <al@alarsen.net>,
    Zhihao Cheng <chengzhihao1@huawei.com>,
    Damien Le Moal <dlemoal@kernel.org>,
    Naohiro Aota <naohiro.aota@wdc.com>,
    Johannes Thumshirn <jth@kernel.org>,
    John Johansen <john.johansen@canonical.com>,
    Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>,
    "Serge E. Hallyn" <serge@hallyn.com>,
    Mimi Zohar <zohar@linux.ibm.com>,
    Roberto Sassu <roberto.sassu@huawei.com>,
    Dmitry Kasatkin <dmitry.kasatkin@gmail.com>,
    Eric Snowberg <eric.snowberg@oracle.com>, Fan Wu <wufan@kernel.org>,
    Stephen Smalley <stephen.smalley.work@gmail.com>,
    Ondrej Mosnacek <omosnace@redhat.com>,
    Casey Schaufler <casey@schaufler-ca.com>,
    Alex Deucher <alexander.deucher@amd.com>,
    Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>,
    David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
    Sumit Semwal <sumit.semwal@linaro.org>,
    Eric Dumazet <edumazet@google.com>,
    Kuniyuki Iwashima <kuniyu@google.com>,
    Paolo Abeni <pabeni@redhat.com>,
    Willem de Bruijn <willemb@google.com>,
    "David S.
 Miller" <davem@davemloft.net>,
    Jakub Kicinski <kuba@kernel.org>, Simon Horman <horms@kernel.org>,
    Oleg Nesterov <oleg@redhat.com>,
    Peter Zijlstra <peterz@infradead.org>,
    Ingo Molnar <mingo@redhat.com>,
    Arnaldo Carvalho de Melo <acme@kernel.org>,
    Namhyung Kim <namhyung@kernel.org>,
    Mark Rutland <mark.rutland@arm.com>,
    Alexander Shishkin <alexander.shishkin@linux.intel.com>,
    Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>,
    Adrian Hunter <adrian.hunter@intel.com>,
    James Clark <james.clark@linaro.org>,
    "Darrick J. Wong" <djwong@kernel.org>,
    Martin Schiller <ms@dev.tdt.de>, Eric Paris <eparis@redhat.com>,
    Joerg Reuter <jreuter@yaina.de>,
    Marcel Holtmann <marcel@holtmann.org>,
    Johan Hedberg <johan.hedberg@gmail.com>,
    Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
    Oliver Hartkopp <socketcan@hartkopp.net>,
    Marc Kleine-Budde <mkl@pengutronix.de>,
    David Ahern <dsahern@kernel.org>,
    Neal Cardwell <ncardwell@google.com>,
    Steffen Klassert <steffen.klassert@secunet.com>,
    Herbert Xu <herbert@gondor.apana.org.au>,
    Remi Denis-Courmont <courmisch@gmail.com>,
    Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
    Xin Long <lucien.xin@gmail.com>,
    Magnus Karlsson <magnus.karlsson@intel.com>,
    Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
    Stanislav Fomichev <sdf@fomichev.me>,
    Alexei Starovoitov <ast@kernel.org>,
    Daniel Borkmann <daniel@iogearbox.net>,
    Jesper Dangaard Brouer <hawk@kernel.org>,
    John Fastabend <john.fastabend@gmail.com>
MIME-Version: 1.0
Date: Tue, 03 Mar 2026 10:48:05 +0000
Message-ID: <1773080.1772534885@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: mGv3PExZ8kkUeGL-27Wl4eZcEXQW6e3aNC-BggAm3JQ_1772534944
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: /
X-MailFrom: dhowells@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JOX4LQDYHTSTBF6QGNLLJ7TRWL6TI3CK
X-Message-ID-Hash: JOX4LQDYHTSTBF6QGNLLJ7TRWL6TI3CK
X-Mailman-Approved-At: Thu, 16 Apr 2026 17:00:00 +0000
CC: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-perf-
 users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@vger.kernel.org, audit@vger.kernel.org, linux-bluetooth@vger.kernel.org, linux-can@vger.kernel.org, linux-sctp@vger.kernel.org, bpf@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 000/110] vfs: change inode->i_ino from unsigned long to u64
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JOX4LQDYHTSTBF6QGNLLJ7TRWL6TI3CK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [5.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	MULTIPLE_UNIQUE_HEADERS(1.40)[To];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1062];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[zeniv.linux.org.uk,kernel.org,suse.cz,goodmis.org,efficios.com,intel.com,infradead.org,mit.edu,linux.dev,suse.de,redhat.com,manguebit.org,dilger.ca,suse.com,oracle.com,brown.name,talpey.com,samba.org,gmail.com,microsoft.com,dubeyko.com,ionkov.net,codewreck.org,crudebyte.com,auristor.com,themaw.net,cs.cmu.edu,fluxnic.net,tyhicks.com,physik.fu-berlin.de,vivo.com,artax.karlin.mff.cuni.cz,nod.at,paragon-software.com,fasheh.com,evilplan.org,linux.alibaba.com,omnibond.com,szeredi.hu,alarsen.net,huawei.com,wdc.com,canonical.com,paul-moore.com,namei.org,hallyn.com,linux.ibm.com,schaufler-ca.com,amd.com,ffwll.ch,linaro.org,google.com,davemloft.net,arm.com,linux.intel.com,dev.tdt.de,yaina.de,holtmann.org,hartkopp.net,pengutronix.de,secunet.com,gondor.apana.org.au,fomichev.me,iogearbox.net];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[172];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dhowells@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.848];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,warthog.procyon.org.uk:mid]
X-Rspamd-Queue-Id: C4BE9412DE0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Jeff Layton <jlayton@kernel.org> wrote:

> This version splits the change up to be more bisectable. It first adds a
> new kino_t typedef and a new "PRIino" macro to hold the width specifier
> for format strings. The conversion is done, and then everything is
> changed to remove the new macro and typedef.

Why remove the typedef?  It might be better to keep it.

David

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
