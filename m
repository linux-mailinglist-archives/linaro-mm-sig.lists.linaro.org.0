Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDjfLhAe4WlbpQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:36:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4BA412DB9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 19:36:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7643A45958
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:36:15 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by lists.linaro.org (Postfix) with ESMTPS id A8AE93F6A0
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Mar 2026 02:30:24 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=paul-moore.com header.s=google header.b=eat0DoZH;
	dmarc=pass (policy=none) header.from=paul-moore.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of paul@paul-moore.com designates 209.85.214.173 as permitted sender) smtp.mailfrom=paul@paul-moore.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2ae5636ab04so14895115ad.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 02 Mar 2026 18:30:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772505024; cv=none;
        d=google.com; s=arc-20240605;
        b=RcarlwwK1xxr5DHofuS1lM7ndJereGVuxGA+lULw0MtDdhbeXNARLkMxicBL3RVtjs
         wHZ3ilS3avmJO8AoJoBMH4Zd0OxSrK2KO/zJZFgqtswrknaHbc0B9E4ILwGAEa/N/vLF
         VmPv8VOXas6fPDoDzLeCHFTEDfVt+96OXHvvfPG0kVZAPI1srMflKn9h8IrG3EcGtB9X
         bQVxnuy9qDnuGArypzaZSbQgqxIj4p48xfzyAHOE4xEd1Hnndv/PpPaGnvAMTPV+T+QN
         A6N/JIxO9LevkYvrYoDcARhDtEYVljTWw5ShfGmO7fMte8+RSSyiT8mjVgG9E7/WSXzz
         bKyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VKlMqpEd7YBdXym1IpYpN4BFku3eaQLOirqfkrIT+SY=;
        fh=+/RjCd98wwIRcPboAe9z3m1qebxCGCA8v1JDWLheYY4=;
        b=W45ePXw36Z6Tffiz+FOBq50BTJMnbioGtHdpI5uKBtzh8PLhjYZvjTJRRqiK8Cj/yd
         YFtS6wZm73C63wyLNtQLrXa2gr1knf5wRCS6s1Vm6kvfAwGafEDlf8E3mrdYb0qGE6Mp
         mrKRw0NVkZr56Nyhx8k+EKfoFSLohtkXiY8VDa4HYGlZhWhbW5CmxE1ufNCLlDrSJuXm
         kgdDPb85VDmsKFZArkgii8mlF3qsyIqmhdP7yfhn2jujUffuEO619m4ooDahzI3wQIsu
         3G5bRPcrukv/UHSvyhbmZY0SbIGbf4qPJ1MBTTIf18GT9srWcUFkLnhBZ2codkkDO51G
         aKhQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paul-moore.com; s=google; t=1772505024; x=1773109824; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VKlMqpEd7YBdXym1IpYpN4BFku3eaQLOirqfkrIT+SY=;
        b=eat0DoZHTeoHvmFFiGuZce+Rw9Vf338pJ1O3C4Faf+xc/DXHAIUQW/6yxZ0aVmkeQ/
         9XcV/45C7JzxG3pFk3FJOkPQzwE6SHdoPNQOeOQF/85naPneo8gnbH5pUzec09zs3YJa
         uTCURmg9sA+FnOQ7g3Bh/U6TsPZkd6KE7jrwN5Xzq2nvssKy7b4k75poMeFey0brr12/
         iVnfYO8c1QjjRAmdf3xfqHR5arh2IN3GL9W1rxWSjKgy3sTJXtLFvQkOcHBpnJA3bX/r
         Lr7vKbLecHGywcJYIa0qrPzwYcJD0HcfVwnZm/WnjHBRwY/T+OiDi7ZRPamrF610xOhl
         B/KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772505024; x=1773109824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VKlMqpEd7YBdXym1IpYpN4BFku3eaQLOirqfkrIT+SY=;
        b=R+LDsdxNNl354s7gY01JM2hrD5FJ7Wtr903ZSlIOiFdJqHa6/ofgN5AcYR/5k+LUUd
         KFQr4DAW5ctvSh9UTLsAx+ebJ+hQuu1yu2Ra1FPoPwF2QUZuzq7YBYn/7fQiALjpZ6U9
         5MDfERfHfnyyyvFRKBRngd4Xxywmr6ulNTLBAwzsccE9iWvg1oI9ncu0IGniyDIiCbv4
         zUTHOqS8XQWVprGAyPlmXjoi+JaIwwUHPlZcNyE0t9WpEhN7mOMETBBtACCGh0DUCdR2
         q/ajMFky1AoreoZU/vm7bAPQzZEvjcUGRwneXn9zMQTX+pA+2OhY00uBXqPStjNrhMol
         SGrg==
X-Forwarded-Encrypted: i=1; AJvYcCWz8srIoT/blFqqbjUsFRZqoynGpKzNOMinn+J2K8+lIo4bg+jztFlfwgnrCtmMy7yNtCQZvRwqtIL+h/G3@lists.linaro.org
X-Gm-Message-State: AOJu0Yz4ELmv2GwXnSyGxgblgJX9vvwO/yaIuzPPGtszcZmpTlgwqD+W
	kkiOiG3nX9WhND74rgplYkKngNbjH/K7bTgJ/Nxo5r5DT1jKO95+QFvTQbaMbP1Gl/mbf3KVeCU
	WJlyiWU0tzduPqer+tzfE9Du+L/fE/7rg6mD1Owjn
X-Gm-Gg: ATEYQzxRje3zlX81Ct0DXShiwGykFocsqEvI/Hix4omXWyRfj9l9qihL+wJFYNuYv9n
	OxCcVgJli7NMILnnK080uRUKUYiBn1m+7O29o5WAk6jJoO3CPFbx4VBaxHx1CfyFZCFN3++wL46
	TYt+8eS2CnfcPOSseM9D02c3Txt+L3D2EG6xf/3i2f3UbM5EqhusJnnB2qnHQvgmZ5mW2lSzVTj
	RDvT3YZUJ2TFjvHKFudAQgGenh2gUpkRNjgQnRzL0awSHUuuMj0OKPpm2ngmYD8dmOiRxOvCBA0
	YYgFoNGTuFgXpY2ynQ==
X-Received: by 2002:a17:903:244a:b0:2ae:56f8:747b with SMTP id
 d9443c01a7336-2ae56f8786cmr37920855ad.57.1772505023451; Mon, 02 Mar 2026
 18:30:23 -0800 (PST)
MIME-Version: 1.0
References: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org> <20260302-iino-u64-v2-105-e5388800dae0@kernel.org>
In-Reply-To: <20260302-iino-u64-v2-105-e5388800dae0@kernel.org>
From: Paul Moore <paul@paul-moore.com>
Date: Mon, 2 Mar 2026 21:30:10 -0500
X-Gm-Features: AaiRm53tOqTCLn9NgvLgqwCOFo4xSyksjolr8ucn59RQ44Ck0r7mzGeRmSI5U0c
Message-ID: <CAHC9VhSHj7qc-tKxEN45bkfr+Dha59ihzOGiCO2WDYTYoB-LeA@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spamd-Bar: ---
X-MailFrom: paul@paul-moore.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: V5TF665MPGVCZJ6M4PXSD4AWRRYVSVXH
X-Message-ID-Hash: V5TF665MPGVCZJ6M4PXSD4AWRRYVSVXH
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:59:59 +0000
CC: Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>, Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Dan Williams <dan.j.williams@intel.com>, Matthew Wilcox <willy@infradead.org>, Eric Biggers <ebiggers@kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>, Muchun Song <muchun.song@linux.dev>, Oscar Salvador <osalvador@suse.de>, David Hildenbrand <david@kernel.org>, David Howells <dhowells@redhat.com>, Paulo Alcantara <pc@manguebit.org>, Andreas Dilger <adilger.kernel@dilger.ca>, Jan Kara <jack@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>, Trond Myklebust <trondmy@kernel.org>, Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>, NeilBrown <neil@brown.name>, Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo <Dai.Ngo@oracle.com>, Tom Talpey <tom@talpey.com>, Steve French <sfrench@samba.org>, Ronnie Sahlberg <ro
 nniesahlberg@gmail.com>, Shyam Prasad N <sprasad@microsoft.com>, Bharath SM <bharathsm@microsoft.com>, Alexander Aring <alex.aring@gmail.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>, Viacheslav Dubeyko <slava@dubeyko.com>, Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>, Christian Schoenebeck <linux_oss@crudebyte.com>, David Sterba <dsterba@suse.com>, Marc Dionne <marc.dionne@auristor.com>, Ian Kent <raven@themaw.net>, Luis de Bethencourt <luisbg@kernel.org>, Salah Triki <salah.triki@gmail.com>, "Tigran A. Aivazian" <aivazian.tigran@gmail.com>, Ilya Dryomov <idryomov@gmail.com>, Alex Markuze <amarkuze@redhat.com>, Jan Harkes <jaharkes@cs.cmu.edu>, coda@cs.cmu.edu, Nicolas Pitre <nico@fluxnic.net>, Tyler Hicks <code@tyhicks.com>, Amir Goldstein <amir73il@gmail.com>, Christoph Hellwig <hch@infradead.org>, John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Yangtao Li <frank.li@vivo.com>, Mikulas Patoc
 ka <mikulas@artax.karlin.mff.cuni.cz>, David Woodhouse <dwmw2@infradead.org>, Richard Weinberger <richard@nod.at>, Dave Kleikamp <shaggy@kernel.org>, Konstantin Komarov <almaz.alexandrovich@paragon-software.com>, Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Mike Marshall <hubcap@omnibond.com>, Martin Brandenburg <martin@omnibond.com>, Miklos Szeredi <miklos@szeredi.hu>, Anders Larsen <al@alarsen.net>, Zhihao Cheng <chengzhihao1@huawei.com>, Damien Le Moal <dlemoal@kernel.org>, Naohiro Aota <naohiro.aota@wdc.com>, Johannes Thumshirn <jth@kernel.org>, John Johansen <john.johansen@canonical.com>, James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Mimi Zohar <zohar@linux.ibm.com>, Roberto Sassu <roberto.sassu@huawei.com>, Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, Eric Snowberg <eric.snowberg@oracle.com>, Fan Wu <wufan@kernel.org>, Stephen Smalley <stephen.smalley.work@gmail.com>, Ondrej Mosnacek <omosna
 ce@redhat.com>, Casey Schaufler <casey@schaufler-ca.com>, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Eric Dumazet <edumazet@google.com>, Kuniyuki Iwashima <kuniyu@google.com>, Paolo Abeni <pabeni@redhat.com>, Willem de Bruijn <willemb@google.com>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Simon Horman <horms@kernel.org>, Oleg Nesterov <oleg@redhat.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, James Clark <james.clark@linaro.org>, "Darrick J. Wong" <djwong@kernel.org>, Martin Schiller
  <ms@dev.tdt.de>, Eric Paris <eparis@redhat.com>, Joerg Reuter <jreuter@yaina.de>, Marcel Holtmann <marcel@holtmann.org>, Johan Hedberg <johan.hedberg@gmail.com>, Luiz Augusto von Dentz <luiz.dentz@gmail.com>, Oliver Hartkopp <socketcan@hartkopp.net>, Marc Kleine-Budde <mkl@pengutronix.de>, David Ahern <dsahern@kernel.org>, Neal Cardwell <ncardwell@google.com>, Steffen Klassert <steffen.klassert@secunet.com>, Herbert Xu <herbert@gondor.apana.org.au>, Remi Denis-Courmont <courmisch@gmail.com>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Magnus Karlsson <magnus.karlsson@intel.com>, Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Stanislav Fomichev <sdf@fomichev.me>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, nvdimm@lists.linux.d
 ev, fsverity@lists.linux.dev, linux-mm@kvack.org, netfs@lists.linux.dev, linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org, samba-technical@lists.samba.org, linux-nilfs@vger.kernel.org, v9fs@lists.linux.dev, linux-afs@lists.infradead.org, autofs@vger.kernel.org, ceph-devel@vger.kernel.org, codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org, linux-mtd@lists.infradead.org, jfs-discussion@lists.sourceforge.net, ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, devel@lists.orangefs.org, linux-unionfs@vger.kernel.org, apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, linux-integrity@vger.kernel.org, selinux@vger.kernel.org, amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-perf-users@vger.kernel.org, linux-fscrypt@vger.kernel.org, linux-xfs@vger.kernel.org, linux-hams@vger.kernel.org, linux-x25@v
 ger.kernel.org, audit@vger.kernel.org, linux-bluetooth@vger.kernel.org, linux-can@vger.kernel.org, linux-sctp@vger.kernel.org, bpf@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 105/110] security: replace PRIino with %llu/%llx format strings
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V5TF665MPGVCZJ6M4PXSD4AWRRYVSVXH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[1071];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[paul-moore.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.718];
	RCPT_COUNT_GT_50(0.00)[171];
	FROM_NEQ_ENVFROM(0.00)[paul@paul-moore.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[zeniv.linux.org.uk,kernel.org,suse.cz,goodmis.org,efficios.com,intel.com,infradead.org,mit.edu,linux.dev,suse.de,redhat.com,manguebit.org,dilger.ca,suse.com,oracle.com,brown.name,talpey.com,samba.org,gmail.com,microsoft.com,dubeyko.com,ionkov.net,codewreck.org,crudebyte.com,auristor.com,themaw.net,cs.cmu.edu,fluxnic.net,tyhicks.com,physik.fu-berlin.de,vivo.com,artax.karlin.mff.cuni.cz,nod.at,paragon-software.com,fasheh.com,evilplan.org,linux.alibaba.com,omnibond.com,szeredi.hu,alarsen.net,huawei.com,wdc.com,canonical.com,namei.org,hallyn.com,linux.ibm.com,schaufler-ca.com,amd.com,ffwll.ch,linaro.org,google.com,davemloft.net,arm.com,linux.intel.com,dev.tdt.de,yaina.de,holtmann.org,hartkopp.net,pengutronix.de,secunet.com,gondor.apana.org.au,fomichev.me,iogearbox.net,vger.kernel.org,lists.linux.d,lists.linux.dev,kvack.org,lists.sourceforge.net,lists.samba.org,lists.infradead.org,coda.cs.cmu.edu,lists.orangefs.org,lists.ubuntu.com,lists.freedesktop.org,lists.linaro.org
 ,v];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,paul-moore.com:url,paul-moore.com:email,linaro.org:email]
X-Rspamd-Queue-Id: 5D4BA412DB9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBNYXIgMiwgMjAyNiBhdCAzOjUw4oCvUE0gSmVmZiBMYXl0b24gPGpsYXl0b25Aa2Vy
bmVsLm9yZz4gd3JvdGU6DQo+DQo+IE5vdyB0aGF0IGlfaW5vIGlzIHU2NCBhbmQgdGhlIFBSSWlu
byBmb3JtYXQgbWFjcm8gaGFzIGJlZW4gcmVtb3ZlZCwNCj4gcmVwbGFjZSBhbGwgdXNlcyBpbiBz
ZWN1cml0eSB3aXRoIHRoZSBjb25jcmV0ZSBmb3JtYXQgc3RyaW5ncy4NCj4NCj4gU2lnbmVkLW9m
Zi1ieTogSmVmZiBMYXl0b24gPGpsYXl0b25Aa2VybmVsLm9yZz4NCj4gLS0tDQo+ICBzZWN1cml0
eS9hcHBhcm1vci9hcHBhcm1vcmZzLmMgICAgICAgfCAgNCArKy0tDQo+ICBzZWN1cml0eS9pbnRl
Z3JpdHkvaW50ZWdyaXR5X2F1ZGl0LmMgfCAgMiArLQ0KPiAgc2VjdXJpdHkvaXBlL2F1ZGl0LmMg
ICAgICAgICAgICAgICAgIHwgIDIgKy0NCj4gIHNlY3VyaXR5L2xzbV9hdWRpdC5jICAgICAgICAg
ICAgICAgICB8IDEwICsrKysrLS0tLS0NCj4gIHNlY3VyaXR5L3NlbGludXgvaG9va3MuYyAgICAg
ICAgICAgICB8IDEwICsrKysrLS0tLS0NCj4gIHNlY3VyaXR5L3NtYWNrL3NtYWNrX2xzbS5jICAg
ICAgICAgICB8IDEyICsrKysrKy0tLS0tLQ0KPiAgNiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRp
b25zKCspLCAyMCBkZWxldGlvbnMoLSkNCg0KRm9yIHRoZSBMU00gZnJhbWV3b3JrIGFuZCBTRUxp
bnV4IGNoYW5nZXMgLi4uDQoNCkFja2VkLWJ5OiBQYXVsIE1vb3JlIDxwYXVsQHBhdWwtbW9vcmUu
Y29tPiAoTFNNL1NFTGludXgpDQoNCi0tIA0KcGF1bC1tb29yZS5jb20NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
