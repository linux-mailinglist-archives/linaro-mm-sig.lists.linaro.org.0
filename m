Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDA0AzVe5mnPvQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BC43F430AD4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:11:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFB7D4062A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:05:05 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 998E43F6B6
	for <linaro-mm-sig@lists.linaro.org>; Fri,  6 Mar 2026 13:29:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Hc2G5bkz;
	spf=pass (lists.linaro.org: domain of brauner@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=brauner@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 070F060133;
	Fri,  6 Mar 2026 13:29:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B1A5C4CEF7;
	Fri,  6 Mar 2026 13:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772803778;
	bh=1ukMkvLDsKaYNY9i0ldkaZ4BWaGkqbXWQ5bDJd35Ruo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hc2G5bkzknQkHbaZAs4y3XyfPC7tq6CC483Y2FuPeJaJ/Ep5xih+Tc66Fpb+BwZ7W
	 Bez8ORwfCmhbe6g0HU6oZVMi4gDWQhsfbyaFq+cVejhoWgnukuID/RZMSHViAcCVrw
	 MjS/lDOASjuhPRZUMZ9AR3PHB2ay8/WfzKkLOdl1k1HLi42nbvUUTkPfv/+Yy3fjTm
	 K+K4W0dOPAbSzctZ86TetwW6UIj7CcluN5pzHcCZKjAogO4Aasoss2NuBYwUN+09zw
	 d8oApzr6/okXUUx7r5/Swj0z04/dBdcsRq0mcjW6ZaOab7H/RmnzywDdyIqKNlOri8
	 PH0xKh9i2soEQ==
Date: Fri, 6 Mar 2026 14:28:59 +0100
From: Christian Brauner <brauner@kernel.org>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20260306-klauen-aufruf-3f79ec9cd4cb@brauner>
References: <20260304-iino-u64-v3-0-2257ad83d372@kernel.org>
 <20260304-iino-u64-v3-1-2257ad83d372@kernel.org>
 <aamSFgXhrORAJLBC@infradead.org>
 <c1845a4b8d35d367953ac6cbfcf91ac36958ba51.camel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1845a4b8d35d367953ac6cbfcf91ac36958ba51.camel@kernel.org>
X-Spamd-Bar: ++
X-Spam-Level: **
X-MailFrom: brauner@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F3WVXFMM4US7QMUY5PDSGB23WKKCXUJB
X-Message-ID-Hash: F3WVXFMM4US7QMUY5PDSGB23WKKCXUJB
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:04:08 +0000
CC: Christoph Hellwig <hch@infradead.org>, Alexander Viro <viro@zeniv.linux.org.uk>, Jan Kara <jack@suse.cz>, Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Dan Williams <dan.j.williams@intel.com>, Eric Biggers <ebiggers@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>, Muchun Song <muchun.song@linux.dev>, Oscar Salvador <osalvador@suse.de>, David Hildenbrand <david@kernel.org>, David Howells <dhowells@redhat.com>, Paulo Alcantara <pc@manguebit.org>, Andreas Dilger <adilger.kernel@dilger.ca>, Jan Kara <jack@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>, Trond Myklebust <trondmy@kernel.org>, Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>, NeilBrown <neil@brown.name>, Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo <Dai.Ngo@oracle.com>, Tom Talpey <tom@talpey.com>, Steve French <sfrench@samba.org>, Ronnie Sahlberg <ronniesahlberg@gmail.com>, Shyam Prasad N
  <sprasad@microsoft.com>, Bharath SM <bharathsm@microsoft.com>, Alexander Aring <alex.aring@gmail.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>, Viacheslav Dubeyko <slava@dubeyko.com>, Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>, Christian Schoenebeck <linux_oss@crudebyte.com>, David Sterba <dsterba@suse.com>, Marc Dionne <marc.dionne@auristor.com>, Ian Kent <raven@themaw.net>, Luis de Bethencourt <luisbg@kernel.org>, Salah Triki <salah.triki@gmail.com>, "Tigran A. Aivazian" <aivazian.tigran@gmail.com>, Ilya Dryomov <idryomov@gmail.com>, Alex Markuze <amarkuze@redhat.com>, Jan Harkes <jaharkes@cs.cmu.edu>, coda@cs.cmu.edu, Nicolas Pitre <nico@fluxnic.net>, Tyler Hicks <code@tyhicks.com>, Amir Goldstein <amir73il@gmail.com>, John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Yangtao Li <frank.li@vivo.com>, Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>, David Woodhouse <dwmw2@infradead.org>, 
 Richard Weinberger <richard@nod.at>, Dave Kleikamp <shaggy@kernel.org>, Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Mike Marshall <hubcap@omnibond.com>, Martin Brandenburg <martin@omnibond.com>, Miklos Szeredi <miklos@szeredi.hu>, Anders Larsen <al@alarsen.net>, Zhihao Cheng <chengzhihao1@huawei.com>, Damien Le Moal <dlemoal@kernel.org>, Naohiro Aota <naohiro.aota@wdc.com>, Johannes Thumshirn <jth@kernel.org>, John Johansen <john.johansen@canonical.com>, Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Mimi Zohar <zohar@linux.ibm.com>, Roberto Sassu <roberto.sassu@huawei.com>, Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, Eric Snowberg <eric.snowberg@oracle.com>, Fan Wu <wufan@kernel.org>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosnace@redhat.com>, Casey Schaufler <casey@schau
 fler-ca.com>, Alex Deucher <alexander.deucher@amd.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Eric Dumazet <edumazet@google.com>, Kuniyuki Iwashima <kuniyu@google.com>, Paolo Abeni <pabeni@redhat.com>, Willem de Bruijn <willemb@google.com>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Simon Horman <horms@kernel.org>, Oleg Nesterov <oleg@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, James Clark <james.clark@linaro.org>, "Darrick J. Wong" <djwong@kernel.org>, Martin Schiller <ms@dev.tdt.de>, Eric Paris <eparis@redhat.co
 m>, Joerg Reuter <jreuter@yaina.de>, Marcel Holtmann <marcel@holtmann.org>, Johan Hedberg <johan.hedberg@gmail.com>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Oliver Hartkopp <socketcan@hartkopp.net>, Marc Kleine-Budde <mkl@pengutronix.de>, David Ahern <dsahern@kernel.org>, Neal Cardwell <ncardwell@google.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, Remi Denis-Courmont <courmisch@gmail.com>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Magnus Karlsson <magnus.karlsson@intel.com>, Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Stanislav Fomichev <sdf@fomichev.me>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.dev, fsverity@lists.linux.dev, linux-mm@kvack.o
 rg, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-perf-users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@vger.kernel.org, audit@vger.kernel.org, linux-b
 luetooth@vger.kernel.org, linux-can@vger.kernel.org, linux-sctp@vger.kernel.org, bpf@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 01/12] vfs: widen inode hash/lookup functions to u64
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F3WVXFMM4US7QMUY5PDSGB23WKKCXUJB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [9.09 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[1083];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_GT_50(0.00)[170];
	FROM_NEQ_ENVFROM(0.00)[brauner@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[infradead.org,zeniv.linux.org.uk,suse.cz,goodmis.org,kernel.org,efficios.com,intel.com,mit.edu,linux.dev,suse.de,redhat.com,manguebit.org,dilger.ca,suse.com,oracle.com,brown.name,talpey.com,samba.org,gmail.com,microsoft.com,dubeyko.com,ionkov.net,codewreck.org,crudebyte.com,auristor.com,themaw.net,cs.cmu.edu,fluxnic.net,tyhicks.com,physik.fu-berlin.de,vivo.com,artax.karlin.mff.cuni.cz,nod.at,paragon-software.com,fasheh.com,evilplan.org,linux.alibaba.com,omnibond.com,szeredi.hu,alarsen.net,huawei.com,wdc.com,canonical.com,paul-moore.com,namei.org,hallyn.com,linux.ibm.com,schau fler-ca.com,amd.com,ffwll.ch,linaro.org,google.com,davemloft.net,arm.com,linux.intel.com,dev.tdt.de,redhat.co m,yaina.de,holtmann.org,hartkopp.net,pengutronix.de,secunet.com,gondor.apana.org.au,fomichev.me,iogearbox.net,vger.kernel.org,lists.linux.dev,kvack.o,lists.sourceforge.net,lists.samba.org,lists.infradead.org,coda.cs.cmu.edu,lists.orangefs.org,lists.ubuntu.com,lists.freedesktop.org,list
 s.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.965];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: BC43F430AD4
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

T24gRnJpLCBNYXIgMDYsIDIwMjYgYXQgMDc6MDM6MTVBTSAtMDUwMCwgSmVmZiBMYXl0b24gd3Jv
dGU6DQo+IE9uIFRodSwgMjAyNi0wMy0wNSBhdCAwNjoyNCAtMDgwMCwgQ2hyaXN0b3BoIEhlbGx3
aWcgd3JvdGU6DQo+ID4gPiDCoGV4dGVybiBzdHJ1Y3QgaW5vZGUgKmlsb29rdXA1X25vd2FpdChz
dHJ1Y3Qgc3VwZXJfYmxvY2sgKnNiLA0KPiA+ID4gLQkJdW5zaWduZWQgbG9uZyBoYXNodmFsLCBp
bnQgKCp0ZXN0KShzdHJ1Y3QgaW5vZGUgKiwgdm9pZCAqKSwNCj4gPiA+ICsJCXU2NCBoYXNodmFs
LCBpbnQgKCp0ZXN0KShzdHJ1Y3QgaW5vZGUgKiwgdm9pZCAqKSwNCj4gPiA+IMKgCQl2b2lkICpk
YXRhLCBib29sICppc25ldyk7DQo+ID4gPiAtZXh0ZXJuIHN0cnVjdCBpbm9kZSAqaWxvb2t1cDUo
c3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgdW5zaWduZWQgbG9uZyBoYXNodmFsLA0KPiA+ID4gK2V4
dGVybiBzdHJ1Y3QgaW5vZGUgKmlsb29rdXA1KHN0cnVjdCBzdXBlcl9ibG9jayAqc2IsIHU2NCBo
YXNodmFsLA0KPiA+ID4gwqAJCWludCAoKnRlc3QpKHN0cnVjdCBpbm9kZSAqLCB2b2lkICopLCB2
b2lkICpkYXRhKTsNCj4gPiANCj4gPiAuLi4NCj4gPiANCj4gPiBDYW4geW91IHBsZWFzZSBkcm9w
IGFsbCB0aGVzZSBwb2ludGxlc3MgZXh0ZXJucyB3aGlsZSB5b3UncmUgYXQgaXQ/DQo+ID4gDQo+
IA0KPiBJIHdhcyBwbGFubmluZyB0byBkbyB0aGF0LCBidXQgdGhlbiBDaHJpc3RpYW4gbWVyZ2Vk
IGl0IQ0KPiANCj4gSSdsbCBkbyBhIHBhdGNoIG9uIHRvcCBvZiB0aGlzIHRoYXQgZG9lcyB0aGlz
IGluIHRoZSByYW5nZSBvZiBmcy5oIHRoYXQNCj4gdGhlIHBhdGNoIHRvdWNoZXMuIENocmlzdGlh
biBjYW4gdGhyb3cgaXQgb24gdG9wIG9mIHRoZSBzZXJpZXMsIGFuZA0KPiB0aGF0IHNob3VsZG4n
dCBiZSB0b28gYmFkIGZvciBiYWNrcG9ydHMuDQoNCkkgY2FuIGVhc2lseSBkcm9wIHRob3NlIHNv
IG5vIG5lZWQgdG8gcmVzZW5kIGZvciBzdHVmZiBsaWtlIHRoaXMgYXMgcGVyDQp0aGUgdXN1YWwg
cHJvdG9jb2wuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZl
QGxpc3RzLmxpbmFyby5vcmcK
