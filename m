Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIfJB7Ni5mmavgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:27 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id C528A4314BB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:30:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA78A3F7A4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:30:25 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id CED7A3F783
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Mar 2026 01:28:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=MLfhqhkz;
	spf=pass (lists.linaro.org: domain of mhiramat@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6626160103;
	Thu, 26 Mar 2026 01:28:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3592AC4CEF7;
	Thu, 26 Mar 2026 01:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774488531;
	bh=0Cq7OMqDyz29Hy/YQIvOOTgh39yp/jjxAwDycnlq/O0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MLfhqhkzsxa7tc0jHzhytzV6qchl81dHU9KAPgpYRYmOHYLzk4wblKHPtqEHyv28p
	 Q/b1ZGVBAKVMA2DtsWIH4xs0i1VJ2p7crVWlc/njQGIq3j2rxJcz4zZlqQtGtXSKGY
	 qE7kmn3skAAmdHpynUh6G1IcDYzRBpRJQJ2v9dHtuEYl1SHM9u79m3ODxDTtFbRHwF
	 TrXVRIXikjQcC748T/h8YzRRuj5Is74hno4IqadGPqhCATzpJM+vXtHmT1645lImlw
	 xbcKSEnaeY6vjDCFgor9rDZ7RPAf5TB+nN0PUncVs3G3ToCrGTMxxDR5q52eHlIdvK
	 yL93d9yknBOTA==
Date: Thu, 26 Mar 2026 10:28:40 +0900
From: Masami Hiramatsu (Google) <mhiramat@kernel.org>
To: "Vineeth Pillai (Google)" <vineeth@bitbyteword.org>
Message-Id: <20260326102840.80a270ec818fea7e000aeef4@kernel.org>
In-Reply-To: <20260323160052.17528-2-vineeth@bitbyteword.org>
References: <20260323160052.17528-1-vineeth@bitbyteword.org>
	<20260323160052.17528-2-vineeth@bitbyteword.org>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-Spamd-Bar: ----
X-MailFrom: mhiramat@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AUJIW2K6QRRVWKD2C5SVFOLRGV5DO3SC
X-Message-ID-Hash: AUJIW2K6QRRVWKD2C5SVFOLRGV5DO3SC
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:29:46 +0000
CC: Steven Rostedt <rostedt@goodmis.org>, Peter Zijlstra <peterz@infradead.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Jiri Pirko <jiri@resnulli.us>, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedes
 ktop.org, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lis
 ts.freedesktop.org, Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, SeongJae Park <sj@kernel.org>, linux-mm@kvack.org, Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/19] tracepoint: Add trace_call__##name() API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AUJIW2K6QRRVWKD2C5SVFOLRGV5DO3SC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	DATE_IN_PAST(1.00)[616];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[goodmis.org,infradead.org,ilvokhin.com,kernel.org,efficios.com,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,gmail.com,ovn.org,lists.sourceforge.net,openvswitch.org,resnulli.us,intel.com,lists.freedes,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,lis,sang-engineering.com,analog.com,HansenPartnership.com,oracle.com,fb.com,suse.com,linutronix.de,linux-foundation.org,kvack.org,alien8.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_GT_50(0.00)[80];
	FROM_NEQ_ENVFROM(0.00)[mhiramat@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[goodmis.org:email,linaro.org:email,bitbyteword.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: C528A4314BB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 23 Mar 2026 12:00:20 -0400
"Vineeth Pillai (Google)" <vineeth@bitbyteword.org> wrote:

> Add trace_call__##name() as a companion to trace_##name().  When a
> caller already guards a tracepoint with an explicit enabled check:
> 
>   if (trace_foo_enabled() && cond)
>       trace_foo(args);
> 
> trace_foo() internally repeats the static_branch_unlikely() test, which
> the compiler cannot fold since static branches are patched binary
> instructions.  This results in two static-branch evaluations for every
> guarded call site.
> 
> trace_call__##name() calls __do_trace_##name() directly, skipping the
> redundant static-branch re-check.  This avoids leaking the internal
> __do_trace_##name() symbol into call sites while still eliminating the
> double evaluation:
> 
>   if (trace_foo_enabled() && cond)
>       trace_invoke_foo(args);   /* calls __do_trace_foo() directly */

nit: trace_call_foo() instead of trace_invoke_foo()?

Anyway looks good to me.

Acked-by: Masami Hiramatsu (Google) <mhiramat@kernel.org>


> 
> Three locations are updated:
> - __DECLARE_TRACE: invoke form omits static_branch_unlikely, retains
>   the LOCKDEP RCU-watching assertion.
> - __DECLARE_TRACE_SYSCALL: same, plus retains might_fault().
> - !TRACEPOINTS_ENABLED stub: empty no-op so callers compile cleanly
>   when tracepoints are compiled out.
> 
> Suggested-by: Steven Rostedt <rostedt@goodmis.org>
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Vineeth Pillai (Google) <vineeth@bitbyteword.org>
> Assisted-by: Claude:claude-sonnet-4-6
> ---
>  include/linux/tracepoint.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/include/linux/tracepoint.h b/include/linux/tracepoint.h
> index 22ca1c8b54f32..ed969705341f1 100644
> --- a/include/linux/tracepoint.h
> +++ b/include/linux/tracepoint.h
> @@ -294,6 +294,10 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
>  			WARN_ONCE(!rcu_is_watching(),			\
>  				  "RCU not watching for tracepoint");	\
>  		}							\
> +	}								\
> +	static inline void trace_call__##name(proto)			\
> +	{								\
> +		__do_trace_##name(args);				\
>  	}
>  
>  #define __DECLARE_TRACE_SYSCALL(name, proto, args, data_proto)		\
> @@ -313,6 +317,11 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
>  			WARN_ONCE(!rcu_is_watching(),			\
>  				  "RCU not watching for tracepoint");	\
>  		}							\
> +	}								\
> +	static inline void trace_call__##name(proto)			\
> +	{								\
> +		might_fault();						\
> +		__do_trace_##name(args);				\
>  	}
>  
>  /*
> @@ -398,6 +407,8 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
>  #define __DECLARE_TRACE_COMMON(name, proto, args, data_proto)		\
>  	static inline void trace_##name(proto)				\
>  	{ }								\
> +	static inline void trace_call__##name(proto)			\
> +	{ }								\
>  	static inline int						\
>  	register_trace_##name(void (*probe)(data_proto),		\
>  			      void *data)				\
> -- 
> 2.53.0
> 


-- 
Masami Hiramatsu (Google) <mhiramat@kernel.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
