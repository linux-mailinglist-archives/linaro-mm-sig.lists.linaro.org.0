Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKFLNXhf5mkqvgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:40 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BE2430E36
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:16:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 829BF404DD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:16:39 +0000 (UTC)
Received: from relay.hostedemail.com (smtprelay0013.hostedemail.com [216.40.44.13])
	by lists.linaro.org (Postfix) with ESMTPS id 27DCC3F700
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Mar 2026 15:13:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of rostedt@goodmis.org designates 216.40.44.13 as permitted sender) smtp.mailfrom=rostedt@goodmis.org;
	dmarc=pass (policy=none) header.from=goodmis.org
Received: from omf11.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay07.hostedemail.com (Postfix) with ESMTP id ADC251602E0;
	Thu, 12 Mar 2026 15:13:07 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf11.hostedemail.com (Postfix) with ESMTPA id 78D742002C;
	Thu, 12 Mar 2026 15:12:41 +0000 (UTC)
Date: Thu, 12 Mar 2026 11:12:55 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Vineeth Pillai (Google)" <vineeth@bitbyteword.org>
Message-ID: <20260312111255.7925b4e2@gandalf.local.home>
In-Reply-To: <20260312150523.2054552-2-vineeth@bitbyteword.org>
References: <20260312150523.2054552-1-vineeth@bitbyteword.org>
	<20260312150523.2054552-2-vineeth@bitbyteword.org>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Stat-Signature: ywcbaqn9zwge3gfga96u97w7nijzfb5x
X-Spam-Status: No, score=1.40
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18ieAMVXlCsjfIHQB5VYSMKQawnv3xLXWM=
X-HE-Tag: 1773328361-302890
X-HE-Meta: U2FsdGVkX19212n5hf5VfWxxI3698ig+MYJ7h5PCrgzm7w3SBjXRVmntUgy1KAiA1j7ASoLiubrJUkhEQG+sVPUaqYvKVHrwHJfLEWqAblPMb1GCyB1vNtgXBTh0V0ySDjWK4c33hpSt6/UqWv2L0DWGvadPudlZSBYs0RHFEdqFbOLNYrAcOZsPRKT15ByTEqCfDyAmN0Qx4BlSkuaDuqx2DqlJVWxM1GIGcenYfKc4Oug4F+oj89fFXccHcftI8mvLFhHknaGUAcf5v6epx6ogBFZcEEfmCJxjXwE/1rjNLuPMol8FZX9cbSBPAiHoHDFNAmrC3azhj+xd+IQ9/nDUnOF7z/s7bbkZPpL2MZx7bw+9cK59bCAAmgXFQUGvGdwUDjf+aJ99jx8W6XuzQvGWj1cuLtlykLy1hAkh57CyBpLZSVzGcIlLV0+qfGz9ZsIFZ0fPg4pdG4v8JMXapSh4ZRe71DXAUeEQ5q5ubssZsWB5mqjTVA==
X-Spamd-Bar: --
X-MailFrom: rostedt@goodmis.org
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: V5XLDZ3HUIU3XX3NPLDMY7EICC4XER2A
X-Message-ID-Hash: V5XLDZ3HUIU3XX3NPLDMY7EICC4XER2A
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:16:00 +0000
CC: Peter Zijlstra <peterz@infradead.org>, Dmitry Ilvokhin <d@ilvokhin.com>, Masami Hiramatsu <mhiramat@kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Ingo Molnar <mingo@redhat.com>, Jens Axboe <axboe@kernel.dk>, io-uring@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>, Xin Long <lucien.xin@gmail.com>, Jon Maloy <jmaloy@redhat.com>, Aaron Conole <aconole@redhat.com>, Eelco Chaudron <echaudro@redhat.com>, Ilya Maximets <i.maximets@ovn.org>, netdev@vger.kernel.org, bpf@vger.kernel.org, linux-sctp@vger.kernel.org, tipc-discussion@lists.sourceforge.net, dev@openvswitch.org, Oded Gabbay <ogabbay@kernel.org>, Koby Elbaz <koby.elbaz@intel.com>, dri-devel@lists.freedesktop.org, "Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <vire
 sh.kumar@linaro.org>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, Huang Rui <ray.huang@amd.com>, Mario Limonciello <mario.limonciello@amd.com>, Len Brown <lenb@kernel.org>, Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, linux-pm@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, Eddie James <eajames@linux.ibm.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, linux-fsi@lists.ozlabs.org, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>, Danilo Krummrich <dakr@kernel.org>, Matthew Brost <matthew.brost@intel.com>, Philipp Stanner <phasta@kernel.org>, Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, amd-gfx@lists.freedesktop.org, Jiri Kosina <jikos@kernel.org>, Benjamin Tissoire
 s <bentiss@kernel.org>, linux-input@vger.kernel.org, Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, Mark Brown <broonie@kernel.org>, Michael Hennerich <michael.hennerich@analog.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, linux-spi@vger.kernel.org, "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org, Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org, linux-trace-kernel@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 01/15] tracepoint: Add trace_invoke_##name() API
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V5XLDZ3HUIU3XX3NPLDMY7EICC4XER2A/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[938];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[goodmis.org : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[infradead.org,ilvokhin.com,kernel.org,efficios.com,redhat.com,kernel.dk,vger.kernel.org,davemloft.net,google.com,iogearbox.net,gmail.com,ovn.org,lists.sourceforge.net,openvswitch.org,intel.com,lists.freedesktop.org,linaro.org,amd.com,linux.intel.com,samsung.com,lists.linaro.org,linux.ibm.com,codeconstruct.com.au,lists.ozlabs.org,ffwll.ch,sang-engineering.com,analog.com,HansenPartnership.com,oracle.com,fb.com,suse.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCPT_COUNT_GT_50(0.00)[71];
	FROM_NEQ_ENVFROM(0.00)[rostedt@goodmis.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[goodmis.org:email,infradead.org:email,bitbyteword.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 76BE2430E36
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 12 Mar 2026 11:04:56 -0400
"Vineeth Pillai (Google)" <vineeth@bitbyteword.org> wrote:

> Add trace_invoke_##name() as a companion to trace_##name().  When a
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
> trace_invoke_##name() calls __do_trace_##name() directly, skipping the
> redundant static-branch re-check.  This avoids leaking the internal
> __do_trace_##name() symbol into call sites while still eliminating the
> double evaluation:
> 
>   if (trace_foo_enabled() && cond)
>       trace_invoke_foo(args);   /* calls __do_trace_foo() directly */
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

I'm guessing Claude helped with the other patches. Did it really help with this one?

-- Steve


> ---
>  include/linux/tracepoint.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/include/linux/tracepoint.h b/include/linux/tracepoint.h
> index 22ca1c8b54f32..07219316a8e14 100644
> --- a/include/linux/tracepoint.h
> +++ b/include/linux/tracepoint.h
> @@ -294,6 +294,10 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
>  			WARN_ONCE(!rcu_is_watching(),			\
>  				  "RCU not watching for tracepoint");	\
>  		}							\
> +	}								\
> +	static inline void trace_invoke_##name(proto)			\
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
> +	static inline void trace_invoke_##name(proto)			\
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
> +	static inline void trace_invoke_##name(proto)			\
> +	{ }								\
>  	static inline int						\
>  	register_trace_##name(void (*probe)(data_proto),		\
>  			      void *data)				\

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
