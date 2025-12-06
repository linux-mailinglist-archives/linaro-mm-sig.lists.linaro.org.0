Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 897C6CA9DFA
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 06 Dec 2025 03:04:56 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C914140105
	for <lists+linaro-mm-sig@lfdr.de>; Sat,  6 Dec 2025 02:04:52 +0000 (UTC)
Received: from mail-ua1-f65.google.com (mail-ua1-f65.google.com [209.85.222.65])
	by lists.linaro.org (Postfix) with ESMTPS id 4542B3F7D7
	for <linaro-mm-sig@lists.linaro.org>; Sat,  6 Dec 2025 02:04:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b="Rq/Nj+u7";
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.222.65 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ua1-f65.google.com with SMTP id a1e0cc1a2514c-937268fe284so1743560241.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Dec 2025 18:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764986676; x=1765591476; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ikbW0KTFV2Hrw3Ofr3+X6/ogNZDuDLj9J6B0i4MyxZI=;
        b=Rq/Nj+u7+qQGl+NDjs7tNq4UROk9vGyf9QewzqHO1ifCSBPBHc7X79ek42JgOBmzdF
         fG279RJxhf/rPM6ZQNenpc4+Nsoq3qYpjd9drggz4wuhmrCwEyTgqnRk0l9bGglmp+gA
         H2Q/ldD2GijW1yN6jgt7QqBjdQ7SFBRNvSqRl6KvwSL/MU21sr54aMZk0cRVgI1RA0EU
         TIsd8Hz9DfzjBv7kN1EOZw034mWQ+ZoltwXD5mTkIAmcyOQ7uF+ga/VSn9R3Fb2rp3vG
         nkfcaKsoDW9BA92u0ObMg6e2mw7dMA/tc5iUOxgmj8BKBuQrbfQX2gt8g+d+iTWHeICk
         WwIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764986676; x=1765591476;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ikbW0KTFV2Hrw3Ofr3+X6/ogNZDuDLj9J6B0i4MyxZI=;
        b=TjTXQXb1NlFoKHrIgmtXoWP/YQ8zl4FuSvREvcxZ/rMkaW4MbVscFMWu1yvWTVYUV/
         6y5ayYCnEnEGfAofok2Zruzgx4DvTvs0AK3iVy3u/xvNz0e3GXFIHSW/gSkLKcIANQeF
         K5lqVMNr1ulwclmgs1jK2iu+7ORiWLr/iQFtq2+oRxmoIMc8LFSiDgNSKQKHi3NIFdg/
         eN3L0rsCw6Ox4hFMstP6JQoBhGBfA/F3vTF9eQPBfehap32PnLb6QobzbX0D5RU8Dozs
         JoCdIjT+vZmgsBv+IZP6zbSAfpQNoLmnVd1JkCoTk2McK2sAMKPpD6z4+RyT2Q3LPfOm
         r05Q==
X-Forwarded-Encrypted: i=1; AJvYcCUK/UJOwjWzb7bvsCHwoYAJvdc2OQe0bfj4WHqDT5snSMqV4XeSpz/XZJ8xl4UCjoy3vHNX1nWNVZheLKoJ@lists.linaro.org
X-Gm-Message-State: AOJu0Ywh9S6F26aON0g3bylIqxy+xOPwp9V48oBGldqF2o8/5x5tstFk
	yOoGgVFDcxMG/kTHjMNbs5jTsmKeCNuaIbjsfcXYKt7upet8xtwwUiGH
X-Gm-Gg: ASbGncsc7c+t+nkD2/X9xZcyNT7rC7hbq4Vv79QTnFRYl0e1Ka8FLVWtfNW6+yRGNRP
	O774tCOCAlVLASj8C1oR8T5VPX+taq3P0fpOpj+d4gZrHlWSZ0p3tmQHeSL6vg/lL3DUsM8D3QF
	cUZZ5HgJo3lmjYdPWbO0EzgJJCt1chk8TRWCvmLRzLBxQPjgkPEFA79PlX2z1qAya6IDIjBrOBy
	1RMljr1nmhYM1aWl0oT0b3oacnbkWniCstzb/l39RXKwLnDc21NySr7Oku+w9+aqiCiMU1JS9r4
	nGFlBy216ZE9XCgYTuXxkZAtzJN6/qYfmhlw+mhQlcBjfo8a5ZRJn+t4EL4C6pTOCa4Uh2j5Ggf
	mEhORi0Sc5GNmXQsSxlQqitID0+9yaFzPfg2NZ7T55rHPmgp00GjSCZJNYJa32NI0l6SdPaB79V
	sPd4918Ld+GkgCLFcXRdk4gA==
X-Google-Smtp-Source: AGHT+IEr3Q6a4CN4+olI+Mt242gDsAIL3w56EYKxscpKjh4CXmUdmYBy6PKk8nZmUVIj5FdxLRUi1Q==
X-Received: by 2002:a17:90b:3fc4:b0:32e:64ca:e84e with SMTP id 98e67ed59e1d1-349a254f6f8mr705096a91.15.1764980727972;
        Fri, 05 Dec 2025 16:25:27 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-349a28cdf5asm360525a91.4.2025.12.05.16.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 16:25:27 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id C8B35421860F; Sat, 06 Dec 2025 07:25:22 +0700 (WIB)
Date: Sat, 6 Dec 2025 07:25:22 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Byungchul Park <byungchul@sk.com>, linux-kernel@vger.kernel.org
Message-ID: <aTN38kJjBftxnjm9@archie.me>
References: <20251205071855.72743-1-byungchul@sk.com>
 <20251205071855.72743-26-byungchul@sk.com>
MIME-Version: 1.0
In-Reply-To: <20251205071855.72743-26-byungchul@sk.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	FORGED_RECIPIENTS(2.00)[m:byungchul@sk.com,m:linux-kernel@vger.kernel.org,m:kernel_team@skhynix.com,m:torvalds@linux-foundation.org,m:damien.lemoal@opensource.wdc.com,m:linux-ide@vger.kernel.org,m:adilger.kernel@dilger.ca,m:linux-ext4@vger.kernel.org,m:mingo@redhat.com,m:peterz@infradead.org,m:will@kernel.org,m:tglx@linutronix.de,m:rostedt@goodmis.org,m:joel@joelfernandes.org,m:sashal@kernel.org,m:daniel.vetter@ffwll.ch,m:duyuyang@gmail.com,m:johannes.berg@intel.com,m:tj@kernel.org,m:tytso@mit.edu,m:willy@infradead.org,m:david@fromorbit.com,m:amir73il@gmail.com,m:gregkh@linuxfoundation.org,m:kernel-team@lge.com,m:linux-mm@kvack.org,m:akpm@linux-foundation.org,m:mhocko@kernel.org,m:minchan@kernel.org,m:hannes@cmpxchg.org,m:vdavydov.dev@gmail.com,m:sj@kernel.org,m:jglisse@redhat.com,m:dennis@kernel.org,m:cl@linux.com,m:penberg@kernel.org,m:rientjes@google.com,m:vbabka@suse.cz,m:ngupta@vflare.org,m:linux-block@vger.kernel.org,m:josef@toxicpanda.com,m:linux-fsdevel@vger.kernel.org,m:jac
 k@suse.cz,m:jlayton@kernel.org,m:dan.j.williams@intel.com,m:hch@infradead.org,m:djwong@kernel.org,m:dri-devel@lists.freedesktop.org,m:rodrigosiqueiramelo@gmail.com,m:melissa.srw@gmail.com,m:hamohammed.sa@gmail.com,m:harry.yoo@oracle.com,m:chris.p.wilson@intel.com,m:gwan-gyeong.mun@intel.com,m:max.byungchul.park@gmail.com,m:boqun.feng@gmail.com,m:longman@redhat.com,m:yunseong.kim@ericsson.com,m:ysk@kzalloc.com,m:yeoreum.yun@arm.com,m:netdev@vger.kernel.org,m:matthew.brost@intel.com,m:her0gyugyu@gmail.com,m:corbet@lwn.net,m:catalin.marinas@arm.com,m:bp@alien8.de,m:x86@kernel.org,m:hpa@zytor.com,m:luto@kernel.org,m:sumit.semwal@linaro.org,m:gustavo@padovan.org,m:christian.koenig@amd.com,m:andi.shyti@kernel.org,m:arnd@arndb.de,m:lorenzo.stoakes@oracle.com,m:Liam.Howlett@oracle.com,m:rppt@kernel.org,m:surenb@google.com,m:mcgrof@kernel.org,m:petr.pavlu@suse.com,m:da.gomez@kernel.org,m:samitolvanen@google.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.upadhyay@kernel.org,m:joelagn
 elf@nvidia.com,m:josh@joshtriplett.org,m:urezki@gmail.com,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@linux.dev,m:juri.lelli@redhat.com,m:vincent.guittot@linaro.org,m:dietmar.eggemann@arm.com,m:bsegall@google.com,m:mgorman@suse.de,m:vschneid@redhat.com,m:chuck.lever@oracle.com,m:neil@brown.name,s:linaro-mm-sig@lists.linaro.org];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.65:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[skhynix.com,linux-foundation.org,opensource.wdc.com,vger.kernel.org,dilger.ca,redhat.com,infradead.org,kernel.org,linutronix.de,goodmis.org,joelfernandes.org,ffwll.ch,gmail.com,intel.com,mit.edu,fromorbit.com,linuxfoundation.org,lge.com,kvack.org,cmpxchg.org,linux.com,google.com,suse.cz,vflare.org,toxicpanda.com,lists.freedesktop.org,oracle.com,ericsson.com,kzalloc.com,arm.com,lwn.net,alien8.de,zytor.com,linaro.org,padovan.org,amd.com,arndb.de,suse.com,nvidia.com,joshtriplett.org,efficios.com,linux.dev,suse.de,brown.name,talpey.com,huawei.com,amazon.co.uk,linux.alibaba.com,glider.be,linux.intel.com,treblig.org,star-ark.net,valla.it,vivo.com,baidu.com,lists.infradead.org,lists.linaro.org,lists.linux.dev,qq.com,ownmail.net,sang-engineering.com,linux-m68k.org,garyguo.net,protonmail.com,umich.edu];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_GT_50(0.00)[165];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4542B3F7D7
X-Spamd-Bar: ----
Message-ID-Hash: 3JSOMFL5NEXU2MOQY52MXX574IRB3W5S
X-Message-ID-Hash: 3JSOMFL5NEXU2MOQY52MXX574IRB3W5S
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: kernel_team@skhynix.com, torvalds@linux-foundation.org, damien.lemoal@opensource.wdc.com, linux-ide@vger.kernel.org, adilger.kernel@dilger.ca, linux-ext4@vger.kernel.org, mingo@redhat.com, peterz@infradead.org, will@kernel.org, tglx@linutronix.de, rostedt@goodmis.org, joel@joelfernandes.org, sashal@kernel.org, daniel.vetter@ffwll.ch, duyuyang@gmail.com, johannes.berg@intel.com, tj@kernel.org, tytso@mit.edu, willy@infradead.org, david@fromorbit.com, amir73il@gmail.com, gregkh@linuxfoundation.org, kernel-team@lge.com, linux-mm@kvack.org, akpm@linux-foundation.org, mhocko@kernel.org, minchan@kernel.org, hannes@cmpxchg.org, vdavydov.dev@gmail.com, sj@kernel.org, jglisse@redhat.com, dennis@kernel.org, cl@linux.com, penberg@kernel.org, rientjes@google.com, vbabka@suse.cz, ngupta@vflare.org, linux-block@vger.kernel.org, josef@toxicpanda.com, linux-fsdevel@vger.kernel.org, jack@suse.cz, jlayton@kernel.org, dan.j.williams@intel.com, hch@infradead.org, djwong@kernel.org, dri-devel@lists.fr
 eedesktop.org, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, hamohammed.sa@gmail.com, harry.yoo@oracle.com, chris.p.wilson@intel.com, gwan-gyeong.mun@intel.com, max.byungchul.park@gmail.com, boqun.feng@gmail.com, longman@redhat.com, yunseong.kim@ericsson.com, ysk@kzalloc.com, yeoreum.yun@arm.com, netdev@vger.kernel.org, matthew.brost@intel.com, her0gyugyu@gmail.com, corbet@lwn.net, catalin.marinas@arm.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, luto@kernel.org, sumit.semwal@linaro.org, gustavo@padovan.org, christian.koenig@amd.com, andi.shyti@kernel.org, arnd@arndb.de, lorenzo.stoakes@oracle.com, Liam.Howlett@oracle.com, rppt@kernel.org, surenb@google.com, mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, samitolvanen@google.com, paulmck@kernel.org, frederic@kernel.org, neeraj.upadhyay@kernel.org, joelagnelf@nvidia.com, josh@joshtriplett.org, urezki@gmail.com, mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com, qiang.zhang@linux.dev, juri.lelli@redhat.co
 m, vincent.guittot@linaro.org, dietmar.eggemann@arm.com, bsegall@google.com, mgorman@suse.de, vschneid@redhat.com, chuck.lever@oracle.com, neil@brown.name, okorniev@redhat.com, Dai.Ngo@oracle.com, tom@talpey.com, trondmy@kernel.org, anna@kernel.org, kees@kernel.org, bigeasy@linutronix.de, clrkwllms@kernel.org, mark.rutland@arm.com, ada.coupriediaz@arm.com, kristina.martsenko@arm.com, wangkefeng.wang@huawei.com, broonie@kernel.org, kevin.brodsky@arm.com, dwmw@amazon.co.uk, shakeel.butt@linux.dev, ast@kernel.org, ziy@nvidia.com, yuzhao@google.com, baolin.wang@linux.alibaba.com, usamaarif642@gmail.com, joel.granados@kernel.org, richard.weiyang@gmail.com, geert+renesas@glider.be, tim.c.chen@linux.intel.com, linux@treblig.org, alexander.shishkin@linux.intel.com, lillian@star-ark.net, chenhuacai@kernel.org, francesco@valla.it, guoweikang.kernel@gmail.com, link@vivo.com, jpoimboe@kernel.org, masahiroy@kernel.org, brauner@kernel.org, thomas.weissschuh@linutronix.de, oleg@redhat.com, mjguzik
 @gmail.com, andrii@kernel.org, wangfushuai@baidu.com, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-i2c@vger.kernel.org, linux-arch@vger.kernel.org, linux-modules@vger.kernel.org, rcu@vger.kernel.org, linux-nfs@vger.kernel.org, linux-rt-devel@lists.linux.dev, 2407018371@qq.com, dakr@kernel.org, miguel.ojeda.sandonis@gmail.com, neilb@ownmail.net, wsa+renesas@sang-engineering.com, dave.hansen@intel.com, geert@linux-m68k.org, ojeda@kernel.org, alex.gaynor@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, aliceryhl@google.com, tmgross@umich.edu, rust-for-linux@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v18 25/42] dept: add documents for dept
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3JSOMFL5NEXU2MOQY52MXX574IRB3W5S/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8001084837357132071=="


--===============8001084837357132071==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tsFx90K4YzyOMDd5"
Content-Disposition: inline


--tsFx90K4YzyOMDd5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 05, 2025 at 04:18:38PM +0900, Byungchul Park wrote:
> Add documents describing the concept and APIs of dept.
>=20
> Signed-off-by: Byungchul Park <byungchul@sk.com>
> ---
>  Documentation/dev-tools/dept.rst     | 778 +++++++++++++++++++++++++++
>  Documentation/dev-tools/dept_api.rst | 125 +++++

You forget to add toctree entries:

---- >8 ----
diff --git a/Documentation/dev-tools/index.rst b/Documentation/dev-tools/in=
dex.rst
index 4b8425e348abd1..02c858f5ed1fa2 100644
--- a/Documentation/dev-tools/index.rst
+++ b/Documentation/dev-tools/index.rst
@@ -22,6 +22,8 @@ Documentation/process/debugging/index.rst
    clang-format
    coccinelle
    sparse
+   dept
+   dept_api
    kcov
    gcov
    kasan

> +Lockdep detects a deadlock by checking lock acquisition order.  For
> +example, a graph to track acquisition order built by lockdep might look
> +like:
> +
> +.. literal::
> +
> +   A -> B -
> +           \
> +            -> E
> +           /
> +   C -> D -
> +
> +   where 'A -> B' means that acquisition A is prior to acquisition B
> +   with A still held.

Use code-block directive for literal code blocks:

---- >8 ----
diff --git a/Documentation/dev-tools/dept.rst b/Documentation/dev-tools/dep=
t.rst
index 333166464543d7..8394c4ea81bc2a 100644
--- a/Documentation/dev-tools/dept.rst
+++ b/Documentation/dev-tools/dept.rst
@@ -10,7 +10,7 @@ Lockdep detects a deadlock by checking lock acquisition o=
rder.  For
 example, a graph to track acquisition order built by lockdep might look
 like:
=20
-.. literal::
+.. code-block::
=20
    A -> B -
            \
@@ -25,7 +25,7 @@ Lockdep keeps adding each new acquisition order into the =
graph at
 runtime.  For example, 'E -> C' will be added when the two locks have
 been acquired in the order, E and then C.  The graph will look like:
=20
-.. literal::
+.. code-block::
=20
        A -> B -
                \
@@ -41,7 +41,7 @@ been acquired in the order, E and then C.  The graph will=
 look like:
=20
 This graph contains a subgraph that demonstrates a loop like:
=20
-.. literal::
+.. code-block::
=20
                 -> E -
                /      \
@@ -76,7 +76,7 @@ e.g. irq context, normal process context, wq worker conte=
xt, or so on.
=20
 Can lockdep detect the following deadlock?
=20
-.. literal::
+.. code-block::
=20
    context X	   context Y	   context Z
=20
@@ -91,7 +91,7 @@ Can lockdep detect the following deadlock?
=20
 No.  What about the following?
=20
-.. literal::
+.. code-block::
=20
    context X		   context Y
=20
@@ -116,7 +116,7 @@ What leads a deadlock
 A deadlock occurs when one or multi contexts are waiting for events that
 will never happen.  For example:
=20
-.. literal::
+.. code-block::
=20
    context X	   context Y	   context Z
=20
@@ -148,7 +148,7 @@ In terms of dependency:
=20
 Dependency graph reflecting this example will look like:
=20
-.. literal::
+.. code-block::
=20
     -> C -> A -> B -
    /                \
@@ -171,7 +171,7 @@ Introduce DEPT
 DEPT(DEPendency Tracker) tracks wait and event instead of lock
 acquisition order so as to recognize the following situation:
=20
-.. literal::
+.. code-block::
=20
    context X	   context Y	   context Z
=20
@@ -186,7 +186,7 @@ acquisition order so as to recognize the following situ=
ation:
 and builds up a dependency graph at runtime that is similar to lockdep.
 The graph might look like:
=20
-.. literal::
+.. code-block::
=20
     -> C -> A -> B -
    /                \
@@ -199,7 +199,7 @@ DEPT keeps adding each new dependency into the graph at=
 runtime.  For
 example, 'B -> D' will be added when event D occurrence is a
 prerequisite to reaching event B like:
=20
-.. literal::
+.. code-block::
=20
    context W
=20
@@ -211,7 +211,7 @@ prerequisite to reaching event B like:
=20
 After the addition, the graph will look like:
=20
-.. literal::
+.. code-block::
=20
                      -> D
                     /
@@ -236,7 +236,7 @@ How DEPT works
 Let's take a look how DEPT works with the 1st example in the section
 'Limitation of lockdep'.
=20
-.. literal::
+.. code-block::
=20
    context X	   context Y	   context Z
=20
@@ -256,7 +256,7 @@ event.
=20
 Adding comments to describe DEPT's view in detail:
=20
-.. literal::
+.. code-block::
=20
    context X	   context Y	   context Z
=20
@@ -293,7 +293,7 @@ Adding comments to describe DEPT's view in detail:
=20
 Let's build up dependency graph with this example.  Firstly, context X:
=20
-.. literal::
+.. code-block::
=20
    context X
=20
@@ -304,7 +304,7 @@ Let's build up dependency graph with this example.  Fir=
stly, context X:
=20
 There are no events to create dependency.  Next, context Y:
=20
-.. literal::
+.. code-block::
=20
    context Y
=20
@@ -332,7 +332,7 @@ event A cannot be triggered if wait B cannot be awakene=
d by event B.
 Therefore, we can say event A depends on event B, say, 'A -> B'.  The
 graph will look like after adding the dependency:
=20
-.. literal::
+.. code-block::
=20
    A -> B
=20
@@ -340,7 +340,7 @@ graph will look like after adding the dependency:
=20
 Lastly, context Z:
=20
-.. literal::
+.. code-block::
=20
    context Z
=20
@@ -362,7 +362,7 @@ triggered if wait A cannot be awakened by event A.  The=
refore, we can
 say event B depends on event A, say, 'B -> A'.  The graph will look like
 after adding the dependency:
=20
-.. literal::
+.. code-block::
=20
     -> A -> B -
    /           \
@@ -386,7 +386,7 @@ Interpret DEPT report
=20
 The following is the same example in the section 'How DEPT works'.
=20
-.. literal::
+.. code-block::
=20
    context X	   context Y	   context Z
=20
@@ -425,7 +425,7 @@ We can simplify this by labeling each waiting point wit=
h [W], each
 point where its event's context starts with [S] and each event with [E].
 This example will look like after the labeling:
=20
-.. literal::
+.. code-block::
=20
    context X	   context Y	   context Z
=20
@@ -443,7 +443,7 @@ DEPT uses the symbols [W], [S] and [E] in its report as=
 described above.
 The following is an example reported by DEPT for a real problem in
 practice.
=20
-.. literal::
+.. code-block::
=20
    Link: https://lore.kernel.org/lkml/6383cde5-cf4b-facf-6e07-1378a485657d=
@I-love.SAKURA.ne.jp/#t
    Link: https://lore.kernel.org/lkml/1674268856-31807-1-git-send-email-by=
ungchul.park@lge.com/
@@ -646,7 +646,7 @@ practice.
=20
 Let's take a look at the summary that is the most important part.
=20
-.. literal::
+.. code-block::
=20
    ---------------------------------------------------
    summary
@@ -669,7 +669,7 @@ Let's take a look at the summary that is the most impor=
tant part.
=20
 The summary shows the following scenario:
=20
-.. literal::
+.. code-block::
=20
    context A	   context B	   context ?(unknown)
=20
@@ -684,7 +684,7 @@ The summary shows the following scenario:
=20
 Adding comments to describe DEPT's view in detail:
=20
-.. literal::
+.. code-block::
=20
    context A	   context B	   context ?(unknown)
=20
@@ -711,7 +711,7 @@ Adding comments to describe DEPT's view in detail:
=20
 Let's build up dependency graph with this report. Firstly, context A:
=20
-.. literal::
+.. code-block::
=20
    context A
=20
@@ -735,7 +735,7 @@ unlock(&ni->ni_lock:0) depends on folio_unlock(&f1), sa=
y,
=20
 The graph will look like after adding the dependency:
=20
-.. literal::
+.. code-block::
=20
    unlock(&ni->ni_lock:0) -> folio_unlock(&f1)
=20
@@ -743,7 +743,7 @@ The graph will look like after adding the dependency:
=20
 Secondly, context B:
=20
-.. literal::
+.. code-block::
=20
    context B
=20
@@ -762,7 +762,7 @@ folio_unlock(&f1) depends on unlock(&ni->ni_lock:0), sa=
y,
=20
 The graph will look like after adding the dependency:
=20
-.. literal::
+.. code-block::
=20
     -> unlock(&ni->ni_lock:0) -> folio_unlock(&f1) -
    /                                                \

> +Limitation of lockdep
> +---------------------
> +
> +Lockdep deals with a deadlock by typical lock e.g. spinlock and mutex,
> +that are supposed to be released within the acquisition context.
> +However, when it comes to a deadlock by folio lock that is not supposed
> +to be released within the acquisition context or other general
> +synchronization mechanisms, lockdep doesn't work.
> +
> +NOTE:  In this document, 'context' refers to any type of unique context
> +e.g. irq context, normal process context, wq worker context, or so on.
> +
> +Can lockdep detect the following deadlock?
> +
> +.. literal::
> +
> +   context X	   context Y	   context Z
> +
> +		   mutex_lock A
> +   folio_lock B
> +		   folio_lock B <- DEADLOCK
> +				   mutex_lock A <- DEADLOCK
> +				   folio_unlock B
> +		   folio_unlock B
> +		   mutex_unlock A
> +				   mutex_unlock A
> +
> +No.  What about the following?
> +
> +.. literal::
> +
> +   context X		   context Y
> +
> +			   mutex_lock A
> +   mutex_lock A <- DEADLOCK
> +			   wait_for_complete B <- DEADLOCK
> +   complete B
> +			   mutex_unlock A
> +   mutex_unlock A
> +
> +No.

One unanswered question from my v17 review [1]: You explain in "How DEPT wo=
rks"
section how DEPT detects deadlock in the first example (the former with thr=
ee
contexts). Can you do the same on the second example (the latter with two
contexts)?

Thanks.

[1]: https://lore.kernel.org/linux-doc/aN84jKyrE1BumpLj@archie.me/

--=20
An old man doll... just what I always wanted! - Clara

--tsFx90K4YzyOMDd5
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCaTN37QAKCRD2uYlJVVFO
o40gAP9yWQe507aOQ9xG+y3WznUbz9K0gxVdcJgmBzyPkuLdOAD/SjStuxrT6yQi
Wd1X9MlzPBf7sPwdNC1xXihj1C/n6go=
=b9ga
-----END PGP SIGNATURE-----

--tsFx90K4YzyOMDd5--

--===============8001084837357132071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8001084837357132071==--
